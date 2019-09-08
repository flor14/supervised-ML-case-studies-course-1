## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:3.5.2

## Copies your repo files into the Docker Container
USER root
RUN apt-get update && apt-get -y install libgsl-dev
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
