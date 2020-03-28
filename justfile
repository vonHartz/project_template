# List available receipes
@list:
  just --list

# Format python code in {src, submission}
format:
  bash utils/format.sh

# Clean experiments
clean:
  bash utils/clean_experiments.sh
