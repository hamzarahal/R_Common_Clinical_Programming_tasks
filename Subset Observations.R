##################################Subset Observations#####################################################
#######################################################################################

#The provided R Tidyverse code snippets demonstrate how to create new data frames by filtering an existing data frame based on specific conditions.

library(tidyverse)

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Carol","F",14,62.8,102.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)


males <- filter(class, Sex=="M")


preteen<-filter(class,Age %in% c(11,12))