ARG VARIANT=3.12-bookworm 
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}
COPY requirements.txt /tmp/pip-tmp/ 
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir install -r /tmp/pip-tmp/requirements.txt
RUN pipx install pre-commit ruff
#RUN pre-commit install
