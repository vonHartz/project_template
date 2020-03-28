# Project Template

To use the template change
* `[execution_file.py]` in `[project_name]` and in the `README.md`
* `[project_name]` in the folder structure
* `[project_name]` in the `README.md` (3x)
* `[project_name]` in `utils/format.sh`
* `[project_name]` and `[authors]` in `pyproject.toml`


**Table of Contents**

 * [Installation](#installation)
 * [General Usage](#general-usage)
    * [Format and clean](#format-and-clean)
    * [Do not run pre-commit hooks](#do-not-run-pre-commit-hooks)
 * [Project Structure](#project-structure)
 * [License](#license)


## Installation

```bash
bash install/miniconda.sh    # For managing python versions
bash install/poetry.sh       # Python package manager
bash install/just.sh         # Command runner
```

```bash
conda create -n [project_name] python=3.7.5
conda activate [project_name]
```

```bash
poetry install
pre-commit install
```

## General Usage

### Format and clean

```bash
bash utils/format.sh
```

```bash
bash utils/clean_experiments.sh
```

### Do not run pre-commit hooks

To commit without runnning `pre-commit` use `git commit --no-verify -m <COMMIT MESSAGE>`.


## Project Structure

```
├── datasets/                       <<  Raw and processed datasets
│   └── <DATASET>/                  <<  Each dataset gets its own directory
│
├── [project_name]/                 <<  Main code of the project
│   ├── analysis/                   <<  Analysis tools
│   ├── <LIBRARY>/                  <<  Libraries implementing parts of the project
│   └── [execution_file.py]         <<  Entry point for execution
│
├── experiments/                    <<  Logs and other files generated during runtime
│   ├── cluster_oe/                 <<  Output and error files from clusters
│   ├── <EXPERIMENT_GROUP>/         <<  Experiments are grouped
│   └── test/                       <<  Non production experiments get a test group
│
├── install/                        <<  Scripts for installation
│
├── reports/                        <<  Analysis, presentations, ...
│   └── <REPORT>/                   <<  Each report gets its own directory
│
├── submit/                         <<  Tooling for cluster submissions
│
└── utils/                          <<  General purpose scripts
```

## License

[The Unlicense](LICENSE)
