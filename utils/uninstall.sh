#!/bin/bash
set -e  # Exit on first failure

source utils/activate_miniconda
conda env remove -n PROJECT_NAME
