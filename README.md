# Machine Learning Project Template

## Installation Via Github Templates and Cookiecutter

1. Create github repository from template with the button `Use this template`.
1. `git clone` the repository
1. In some python environment `pip install cookiecutter`.
1. `cd <REPOSITORY_NAME`
1. Run `cookiecutter --overwrite-if-exists --output-dir .. .`. Make sure to use the correct repository name.
1. `rm -r cookiecutter.json \{\{cookiecutter.repository_name\}\}`
1. `git add -A && git commit -m "instantiate project template"`

## Installation Via Cookiecutter and Manual Repository Creation