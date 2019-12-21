#!/bin/bash
set -e  # Exit on first failure

source utils/activate_miniconda
source utils/activate_poetry

conda create -n PROJECT_NAME -c conda-forge python=3.7.5 gcc_linux-64 -y
conda activate PROJECT_NAME

poetry install
