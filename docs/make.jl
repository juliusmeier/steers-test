using Documenter

makedocs(sitename="My Documentation",
    pages = Any[
        "Home" => "index.md",
        "Methodology" => "pages/method.md",
        "Data" => "pages/data.md",
        "Model" => "pages/model.md"
    ]
)

deploydocs(
    repo = "github.com/luetha/steers-test.git",
    target = "build",
    push_preview = true,
)