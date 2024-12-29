#########################################Subset observations and variables####################################################
################################################################################################################

#The provided R Tidyverse code snippet creates a new data frame named "males" by filtering 
#observations from the existing data frame "class" based on a specific condition and excluding 
#a variable from the resulting data frame.

#The %>% operator, also known as the pipe operator, is used to chain multiple operations together 
#in a concise manner.

#The filter function is used to select only those rows from the "class" data frame where the 
#value of the "Sex" variable is "M," indicating males.

#The select function, combined with the - sign, is used to exclude the "Sex" variable from the resulting "males" data frame.

#By using the pipe operator, the filtered and selected data frame is directly assigned to the 
#"males" object.

#This R Tidyverse code snippet showcases how to create a new data frame named "males" that 
#includes only the observations where the sex is "M," while excluding the "Sex" variable. 
#This enables further analysis and manipulation of a subset of data containing only male 
#individuals.

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