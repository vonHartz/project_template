# TITLE
bla


## Project Structure

```
├── .miniconda/                            <<  Project-local miniconda installation
│
├── datasets/                              <<  Raw and processed datasets
│
├── experiments/                           <<  Logs and other files generated during runtime
│   └── cluster_oe/                        <<  Output and error files from clusters
│
├── models/                                <<  Parameters obtained offline (e.g., pretrained)
│
├── reports/                               <<  Analysis and results as tex, html, ...
│
├── src/                                   <<  Source code
│
├── submission/                            <<  Submission utilities
│
└── utils/                                 <<  General purpose scripts (formating, setup, ..)
```


## Setup

To setup the python environment or to update an environment run
```bash
bash utils/setup_environment.sh
```

1. If there is no miniconda installation, downloads the miniconda installer and installs it into `.miniconda`
1. Updates conda
1. If there is no todo environment, installs it as specified in `utils/.environment.yml`
1. If there is an todo environment and there are changes to `utils/.environment.yml` performs updates
1. Installs pre-commit


## Usage


### Miscellaneous

Activating an environment without having the conda installation in your `PATH`:
```bash
source .miniconda/bin/activate todo
```

To run the pre-commit scripts manually run
```bash
bash utils/format.sh
```

To commit without runnning pre-commit supply the `--no-verify` option to `git commit`.

## Deinstallation

To remove the conda installation run

```bash
bash utils/clean_conda.sh
```
