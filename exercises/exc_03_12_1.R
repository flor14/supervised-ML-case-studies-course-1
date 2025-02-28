library(tidyverse)
library(caret)

vote_train <- readRDS("data/c3_training_two_percent.rds")

# Logistic regression
vote_glm <- train(turnout16_2016 ~ ., 
                  method = "glm", family = "binomial",
                  data = vote_train,
                  trControl = trainControl(method = ___,
                                           repeats = ___,
                                           sampling = "up"))

# Print vote_glm
vote_glm
