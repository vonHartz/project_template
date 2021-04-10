# Contributing

## Tools you need to know about

* [Poetry](https://python-poetry.org/docs/) to manage python packages (replaces pip), make sure to understand the roles of `poetry.lock` and `pyproject.toml`
* [Hydra](https://hydra.cc/docs/intro/) to run and configure python scripts (replaces argparse)
* [justfile](https://github.com/casey/just) to run and document commands and shell scripts (replaces Makefile)
* [pre-commit](https://pre-commit.com/) to run auto-formatting, code quality checks, and bug checks at each commit

## Developer Installation

```bash
bash install_dev_utils/miniconda.sh    # For managing python versions
bash install_dev_utils/poetry.sh       # Python package manager
bash install_dev_utils/just.sh         # Command runner
```

```bash
conda create -n [project_name] python=3.7.5
conda activate [project_name]
```

```bash
poetry install
pre-commit install
```

## Add dependencies

To install a dependency use

```bash
poetry add dependency
```

and commit the updated `poetry.lock` and `pyproject.toml` to git.

For more advanced dependency management see examples in `pyproject.toml` or have a look at the [poetry documentation](https://python-poetry.org/).

## Do not run pre-commit hooks

To commit without running `pre-commit` use `git commit --no-verify -m <COMMIT MESSAGE>`.

## Ignore pylint warning

```python
code = "foo"  # pylint: disable=bar
```

Or remove warnings in `pyproject.toml` that we do not consider useful (do not catch bugs, do not increase code quality).

## Do not format with black

```python
x = 2  # fmt: off
```

or for blocks

```python
# fmt: off
x = 2
y = x + 1
# fmt: on

```

## Editorconfig

You might want to install an [editorconfig](https://editorconfig.org/) plugin for your text editor to automatically set line lengths etc.
