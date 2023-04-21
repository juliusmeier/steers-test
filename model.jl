using JuMP
using Clp
using Plots 
using DataFrames, CSV

#****************************************************************************
# Preprocessing

data_path = "data"
time_series = CSV.read(joinpath(data_path, "timedata.csv"),DataFrame)
tech_data = CSV.read(joinpath(data_path, "technologies.csv"),DataFrame)

### data preprocessing ###
T = time_series[:,"hour"]
P = ["coal","gas","pv","wind"]
DISP = ["coal","gas"]
NONDISP = ["pv","wind"]
S = ["PumpedHydro", "Battery"]

DISP = vcat(DISP, S)

tech_data = DataFrames.unstack(tech_data, :technology, :parameter, :value)

### parameters ###
demand = Dict(time_series[:,:hour] .=> time_series[:,:demand])#./1000)

mc = Dict()
g_max = Dict()
eff = Dict()
stor_max = Dict()
for tech in tech_data.technology
    mc[tech] = tech_data[tech_data.technology .== tech, :mc][1]
    g_max[tech] = tech_data[tech_data.technology .== tech, :installed_cap][1]
    eff[tech] = tech_data[tech_data.technology .== tech, :storage_eff][1]
    stor_max[tech] = tech_data[tech_data.technology .== tech, :storage_max][1]
end

pv_installed = g_max["pv"]
wind_installed = g_max["wind"]

avail_pv = Dict(
    ("pv", row["hour"]) => row["pv"] * pv_installed for row in eachrow(time_series)
)
avail_wind = Dict(
    ("wind", row["hour"]) => row["wind"] * wind_installed for row in eachrow(time_series)
)
res_feed_in = merge(avail_pv, avail_wind)

# Storage specific helper function
next_hour(x) = x == T[end] ? T[1] : T[findfirst(isequal(x), T) + 1]

#****************************************************************************
# Model

m = Model(Clp.Optimizer)

@variables m begin
    G[DISP, T] >= 0
    CU[T] >= 0
    D_stor[S,T] >= 0 # charging/demand from the battery
    L_stor[S,T] >= 0 
end

@objective(m, Min, sum(mc[disp] * G[disp,t] for disp in DISP, t in T))

@constraint(m, EnergyBalance[t=T],
    sum(G[disp,t] for disp in DISP)
    + sum(res_feed_in[ndisp,t] for ndisp=NONDISP)
    - sum(D_stor[s,t] for s in S)
    - CU[t]
    == 
    demand[t]
)

@constraint(m, MaxGeneration[disp=DISP, t=T],
    G[disp,t] <= g_max[disp])

@constraint(m, MaxCharge[s=S, t=T],
    D_stor[s,t] <= g_max[s])

@constraint(m, StorageLevel[s=S, t=T],
    L_stor[s, next_hour(t)]
    ==
    L_stor[s, t] 
    + D_stor[s,t] 
    - (1/eff[s]) * G[s,t]
)

#****************************************************************************
# Solve

optimize!(m)

#****************************************************************************
# Report results

total_cost = objective_value(m)

result_G = value.(G).data

feedin = [res_feed_in[ndisp,t] for ndisp in NONDISP, t in T]

generation = vcat(feedin, result_G) |> transpose

curtailment = value.(CU).data

# Plot electricity balance

d = [demand[t] for t in T]

areaplot(
    generation,
    label=["PV" "Wind" "Coal" "Gas" "PumpedHydro" "Battery"],
    color=[:yellow :lightblue :brown :grey :blue :purple],
    xlabel="Hours",
    ylabel="MW",
    width=0,
    legend=false
)

plot!(d, color=:black, width=3, label = "Demand")
plot!(curtailment .+ d, color=:black, width=2, label="Curtailment", linestyle=:dash)

stor = -value.(D_stor).data |> transpose

areaplot!(
    stor,
    label="",
    color=[:blue :purple],
    width=0
)

hline!([0], color=:black, width=2, label="")

price = dual.(EnergyBalance).data

plot!(
    twinx(),
    price,
    color=:black,
    ylim=(minimum(price)-10,maximum(price)+10),
    width=2,
    leg=false,
    ylabel="Cost per MW",
    linestyle=:dot
)
println(price)