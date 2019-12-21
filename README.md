# Project Template

Table of Contents
=================

* [Using the template](#using-the-template)
* [Quick start](#quick-start)
* [Installation](#installation)
* [General Usage](#general-usage)
   * [Activate tools](#activate-tools)
   * [Dependency management](#dependency-management)
   * [Format and clean](#format-and-clean)
   * [Do not run pre-commit hooks](#do-not-run-pre-commit-hooks)
* [Uninstallation](#uninstallation)
* [Project Structure](#project-structure)
* [License](#license)

## Using the template
Replace `PROJECT_NAME` in `pyproject.toml`, `utils/uninstall.sh`, `utils/install_environment.sh` and `utils/activate_environment.sh` with your project name.

## Quick start
```bash
bash utils/install.sh               # Install dependencies
bash utils/setup_multi_small.sh     # Prepare data
source utils/activate               # Activate project environment
```

Note that `utils/install.sh` will install the python package manager [poetry](https://github.com/sdispater/poetry) into `$HOME/.poetry` and the python version manager [pyenv](https://github.com/pyenv/pyenv) into `$HOME/.pyenv`, if not already installed.

## Installation

You can either install all dependencies with

```bash
bash utils/install.sh
```

or for more fine grained control over the installation you can use the individual install scripts directly

```bash
bash utils/install_miniconda.sh    # For managing python versions
bash utils/install_poetry.sh       # Python package manager
bash utils/install_environment.sh  # Create virtualenv with py3.7 and dependencies in poetry.lock
bash utils/install_pre-commit.sh   # Pre-commit hooks specified in .pre-commit-config.yaml
```

## General Usage

### Activate tools

For activating all project tools run

```bash
source utils/activate
```

which is equivalent to

```bash
source utils/activate_poetry
source utils/activate_miniconda
source utils/activate_environment
```

### Dependency management

TODO explain

```bash
source utils/activate
poetry add <DEPENDENCY>
```

```bash
source utils/activate
poetry update
```

### Format and clean

```bash
bash utils/format.sh
```

```bash
bash utils/clean_experiments.sh
```

### Do not run pre-commit hooks

To commit without runnning `pre-commit` use `git commit --no-verify -m <COMMIT MESSAGE>`.


## Uninstallation

For uninstalling the conda environment you can use

```bash
bash utils/uninstall.sh
```


To remove miniconda or poetry remove the respective folders in `$HOME`

```bash
rm -r $HOME/.miniconda
rm -r $HOME/.poetry
```

## Project Structure

```
├── datasets/                       <<  Raw and processed datasets
│   └── <DATASET>/
│
├── experiments/                    <<  Logs and other files generated during runtime
│   ├── cluster_oe/                 <<  Output and error files from clusters
│   └── test/                       <<  Non production experiments get a test group
│
├── models/                         <<  Model checkpoints for further usage
│
├── reports/                        <<  Analysis, presentations, ...
│   ├── <REPORT>/                   <<  Each report gets its own directory
│   └── notes/                      <<  Quick note files
│
├── src/                            <<  Main code of the project
│   ├── analysis/                   <<  Analysis tools
│   ├── execution/                  <<  Execution scripts
│   └── <LIBRARY>/                  <<  Libraries implementing parts of the project
│
├── submission/                     <<  Tooling for cluster submissions
│
└── utils/                          <<  General purpose scripts
```

Files prefixed with an underscore (e.g., `_PRIVATE_FILE`) are not used outside of the current folder.

## License

[Apache 2.0](LICENSE)
