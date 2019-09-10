## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:3.5.2

## Declares build arguments
ARG NB_USER
ARG NB_UID

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
## Enable this to copy files from the binder subdirectory
## to the home, overriding any existing files.
## Useful to create a setup on binder that is different from a
## clone of your repository
## COPY binder ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Run an deps.R script, if it exists.
RUN installGithub.r cran/e1071@1.6-8 cran/gbm@2.1.3 cran/randomForest@4.6-12 cran/xgboost@0.6.4.1 cran/caret@6.0-78 cran/yardstick@0.0.1 cran/tidyverse@1.2.1 

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
## RUN if [ -f install.R ]; then R --quiet -f install.R; fi
