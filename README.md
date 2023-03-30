# Testing the STEERS methodology
*A model used to verify the STEERS methodology*

- Show Link to jupyter-book website with documentation
- Explain how to install and use the julia modelling related part
- Explain how to install and use the jupyter-book website documentation part (include GitHub action workflow to automatically build and publish changes on main branch to website)

## How to use this repository

In order to install steers-test, proceed with the following steps:

- git-clone steers-test into local folder: `git clone https://github.com/luetha/steers-test.git`
- enter folder: `cd steers-test`
- create virtual environment using conda: `conda env create -f environment.yaml`
- activate environment: `conda activate steers-test`

>**Note**
>The default implementation of `conda` can be very slow in putting together an actual python environment because it has to solve a difficult puzzle to ensure that the combination of packages is mutually compatible. Fortunately, there is a much faster alternative called [mamba](https://mamba.readthedocs.io/en/latest/index.html). With Mamba you can install environments and packages as before, but unsing the `mamba` comand instead of `conda`. 

If you'd like to develop and/or build the STEERS book, you should:

1. Make sure you have steers-test installed and are in the steers-test directory as well as having activated the steers-test environment
3. (Optional) Edit the books source files located in the `docs/` directory
4. Run `jupyter-book clean docs/` to remove any existing builds
5. Run `jupyter-book build docs/`

A fully-rendered HTML version of the book will be built in `docs/_build/html/`.