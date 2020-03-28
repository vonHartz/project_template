#!/bin/bash
set -e  # Exit on first failure

python -m black [project_name] submit
python -m isort [project_name] -rc
python -m isort submit -rc
