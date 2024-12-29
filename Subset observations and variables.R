#########################################Subset observations and variables####################################################
################################################################################################################

#The provided R Tidyverse code snippet creates a new data frame named "males" by filtering observations from the existing data frame "class" based on a specific condition and excluding a variable from the resulting data frame.

library(tidyverse)

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
  "Carol","F",14,62.8,102.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)

males<-class %>% 
  filter(Sex=="M") %>% 
  select(-Sex)