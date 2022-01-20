#!/bin/bash

export PATH="${PATH}:${HOME}/.pyenv/shims:${HOME}/.pyenv/bin"

TOOLS_PIP="${HOME}/.pyenv/versions/tools3/bin/pip"
TOOLS_PYTHON="${HOME}/.pyenv/versions/tools3/bin/python"

JUPYTER_PIP="${HOME}/.pyenv/versions/jupyter3/bin/pip"
JUPYTER_PYTHON="${HOME}/.pyenv/versions/jupyter3/bin/python"

# Tools3 virtualenv
$TOOLS_PIP install youtube-dl rows flake8 pipenv isort black pipenv pre-commit mkdocs mkdocs-material cookiecutter pynvim jedi neovim isort pynvim pip-tools jmespath 
$TOOLS_PIP install --upgrade pip

# Jupyter virtualenv
$JUPYTER_PIP install jupyterlab
$JUPYTER_PIP install --upgrade pip
$JUPYTER_PYTHON -m ipykernel install --user