library(tidyverse)
library(caret)

stack_train <- readRDS("data/c2_training_full.rds")
stack_test <- readRDS("data/c2_testing_full.rds")

# Create the upsampled training set
up_train <- upSample(x = select(stack_train, -Remote),
                     y = stack_train$Remote,
                     yname = "Remote") %>%
    as_tibble()

# Count the number of each type of Remote employee
up_train %>%
    count(Remote)
