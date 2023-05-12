# Testing the STEERS methodology
*A model used to verify the STEERS methodology*

- Show Link to jupyter-book website with documentation [Online Documentation](juliusmeier.github.io/steers-test/)
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

If you'd like to develop and/or build the STEERS book **locally**, you should:

1. Make sure you have steers-test installed and are in the steers-test directory as well as having activated the steers-test environment
3. (Optional) Edit the books source files located in the `docs/` directory
4. Run `jupyter-book clean docs/` to remove any existing builds
5. Run `jupyter-book build docs/`

A fully-rendered HTML version of the book will be built in `docs/_build/html/`.

If you'd like to develop and **publish** the STEERS book documentation **online**, you should:
1. Make sure you have steers-test installed and are in the steers-test directory as well as having activated the steers-test environment
2. Edit the books source files located in the `docs/` directory
3. Push the changes to the `master` branch.
4. Wait while GitHub is running an action to build the book and publish it on the website url.

>**Note**
>Here, the Jupyter Book is automatically published online using GitHub Pages and Actions. In simple terms, a GitHub action is activated when a *push* event on `master` branch happens. The action builds the Jupyter Book and puts the generated HTML files on the branch `gh-pages`. The GitHub is then published based on the content in `gh-pages`. For a detailed description of the process and further instruction on how to buuild and publish a book, please refer to the [Jupyter Book documentation](https://jupyterbook.org/en/stable/publish/web.html).