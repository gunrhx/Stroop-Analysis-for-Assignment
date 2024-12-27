#Written on: 18/12/2024
#This code computes a multi-factor regression model on Stroop data

# install.packages("lme4")


rm(list = ls())
setwd("./stroop_data")
load("filtered_data.RData")
library(lme4)

#linear mixed effect model
model = lmer (filtered_data$rt ~ task * congruency + (1|subject), data = filtered_data)
summary(model)
fixef(model)
ranef(model)