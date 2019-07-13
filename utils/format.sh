#!/bin/bash

if [ -f ".miniconda/bin/activate" ]; then
    # Use local miniconda installation
    source .miniconda/bin/activate
fi
conda activate todo
pre-commit run --all-files
