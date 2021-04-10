# Machine Learning Project Template

## Installation Via Github Templates and Cookiecutter

1. Create github repository from template with the button `Use this template`.
1. `git clone` the repository
1. In some python environment `pip install cookiecutter`.
1. Instantiate template and push
    ```bash
    cd <REPOSITORY_NAME>
    cookiecutter --overwrite-if-exists --output-dir .. .  # Make sure to use the correct repository name.
    rm -r cookiecutter.json \{\{cookiecutter.repository_name\}\}
    git add -A && git commit -m "instantiate project template && git push"
    ```


## Installation Via Cookiecutter and Manual Repository Creation

More flexible approach that does not use github.

1. Create remote repository
1. In some python environment `pip install cookiecutter`.
1. Run `cookiecutter https://github.com/DaStoll/project_template.git`
1. Create and push repository. For example:
    ```bash
    cd <REPOSITORY_NAME>
    git init
    git add -A
    git commit -m "initial commit"
    git branch -M main
    git remote add origin https://github.com/DaStoll/test_temp.git
    git push -u origin main
    ```