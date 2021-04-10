# Project Template

To use the template change
* `[project_name]` in the folder structure
* `[project_name]` in the `README.md` (3x)
* `[project_name]` and `[authors]` in `pyproject.toml`
* `[project_name]` in `[project_name]/run.py`
* `project_name` in `[project_name]/configs/hydra/job_logging/full.yaml`

You will probably also want to change the license.

## Developer Install

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Project Structure

```
├── data/                           <<  Raw and processed data
│   └── <DATASET>/                  <<  Each dataset gets its own directory
│
├── [project_name]/                 <<  Main code of the project
│   ├── analysis/                   <<  Analysis tools
│   ├── <LIBRARY>/                  <<  Libraries implementing parts of the project
│   └── run.py                      <<  Entry point for execution
│
├── results/                        <<  Logs and other files generated during runtime
│   ├── <EXPERIMENT_GROUP>/         <<  Experiments are grouped
│   └── test/                       <<  Non production experiments get a test group
│
├── install_dev_utils/              <<  Scripts for installing developer utils
│
├── reports/                        <<  Plots, analysis, presentations, papers, ...
│   └── <REPORT>/                   <<  Each report gets its own directory
│
└── submit/                         <<  Tooling for cluster submissions
```

## License

[The Unlicense](LICENSE)
