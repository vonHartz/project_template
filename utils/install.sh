#!/bin/bash
set -e  # Exit on first failure

bash utils/install_poetry.sh
bash utils/install_miniconda.sh
bash utils/install_environment.sh
bash utils/install_pre-commit.sh
bash utils/install_just.sh
