# {{cookiecutter.readme_title}}

## Developer Install

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Run local

```bash
python -m {{cookiecutter.package_name}}.run
```

## Project Structure

```
├── data/                           <<  Raw and processed data
│   └── <DATASET>/                  <<  Each dataset gets its own directory
│
├── {{cookiecutter.package_name}}/  <<  Main code of the project
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
