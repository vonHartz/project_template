#!/bin/bash

# Ensure conda is installed on the machine
if [ ! -f ".miniconda/bin/activate" ] && [ ! -x "$(command -v conda)" ]; then
    cd .miniconda

    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O install_miniconda.sh
    bash install_miniconda.sh -b -p . -f  # silent mode + force write in directory that exists
    rm install_miniconda.sh

    cd ..
fi

if [ -f ".miniconda/bin/activate" ]; then
    # Use local miniconda installation and keep it up to date
    source .miniconda/bin/activate
    conda update -n base -c defaults conda --yes
    conda env update -f .environment.yml --prune
    source .miniconda/bin/activate todo
else
    # Use global conda installation
    conda env update -f .environment.yml --prune
    conda activate todo
fi

if [ -d .git ]; then
  pre-commit install
fi
