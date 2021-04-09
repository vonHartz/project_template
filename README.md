# Project Template

To use the template change
* `[execution_file.py]` in `[project_name]` and in the `README.md`
* `[project_name]` in the folder structure
* `[project_name]` in the `README.md` (3x)
* `[project_name]` and `[authors]` in `pyproject.toml`

You will probably also want to change the license.

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

## Project Structure

```
├── data/                           <<  Raw and processed data
│   └── <DATASET>/                  <<  Each dataset gets its own directory
│
├── [project_name]/                 <<  Main code of the project
│   ├── analysis/                   <<  Analysis tools
│   ├── <LIBRARY>/                  <<  Libraries implementing parts of the project
│   └── [execution_file.py]         <<  Entry point for execution
│
├── results/                        <<  Logs and other files generated during runtime
│   ├── <EXPERIMENT_GROUP>/         <<  Experiments are grouped
│   └── test/                       <<  Non production experiments get a test group
│
├── install/                        <<  Scripts for installation
│
├── reports/                        <<  Plots, analysis, presentations, papers, ...
│   └── <REPORT>/                   <<  Each report gets its own directory
│
└── submit/                         <<  Tooling for cluster submissions
```

## License

[The Unlicense](LICENSE)
