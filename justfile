# List available receipes
@list:
  just --list

# Update python env using poetry
update:
  #!/usr/bin/env bash
  source utils/activate
  poetry update

# Install [all, just, poetry, miniconda, environment, pre-commit]
install software="all":
  bash utils/install_{{software}}.sh

# Uninstalls python environment from miniconda
uninstall:
  bash utils/uninstall.sh

# Format python code in {src, submission}
format:
  bash utils/format.sh

# Clean experiments
clean:
  bash utils/clean_experiments.sh
