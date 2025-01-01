##################################Subset Observations#####################################################
#######################################################################################

#The provided R Tidyverse code snippets demonstrate how to create new data frames by filtering an existing data frame based on specific conditions.

#In the first snippet, a data frame named "males" is created by filtering the "class" data frame to include only rows where the value of the "Sex" variable is "M", indicating males. This is achieved using the filter function from the dplyr package.

#In the second snippet, a data frame named "preteen" is created by filtering the "class" data frame to include only rows where the value of the "Age" variable is either 11 or 12. This is done using the filter function and the %in% operator.

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