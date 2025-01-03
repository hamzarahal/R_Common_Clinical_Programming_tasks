#####################################Create a copy of an existing dataset#################################
###########################################################################################################

#This code snippet demonstrates how to create a new data frame by duplicating an existing one in R. It allows you to work with a separate copy of the data frame while keeping the original intact.

#The R Tidyverse code snippet assigns the data frame "class" to a new data frame named "new_class" using the assignment operator (<- or =).

#The existing data frame "class" is duplicated, and the resulting duplicate is stored in the new data frame "new_class".

#This operation creates a separate copy of the data frame, so any changes made to "new_class" will not affect the original "class" data frame.

library(tidyverse)

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
)


new_class<-class