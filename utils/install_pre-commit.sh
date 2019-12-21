#!/bin/bash
set -e  # Exit on first failure

source utils/activate_miniconda
source utils/activate_environment
source utils/activate_poetry
poetry run pre-commit install
