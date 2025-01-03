######################################################Create Sample Data#############################################
#####################################################################################################################

#The R Tidyverse code snippet demonstrates the use of the tribble function from the tidyverse package to create a data frame named "class" with variables such as Name, Sex, Age, Height, and Weight.

library(tidyverse)

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
)