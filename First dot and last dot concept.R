#######################################First dot and last dot concept################################################
#####################################################################################################################

#This R Tidyverse code snippet demonstrates how to create a subset of data by selecting only one 
#observation from each group based on a specific variable, in this case, the "age" variable.
#Using the pipe operator %>%, the following operations are performed:
#The group_by function is used to group the "class" data frame by the "age" variable.
#The mutate function is applied to create a new variable named "nrows" that represents the number of observations in each group.
#The filter function is used to keep only the observations where "nrows" is equal to 1, 
#indicating that it is the only observation in its respective group.
#After executing this code snippet, the resulting data frame "only_one_in_group" will contain 
#only one observation from each group based on the "age" variable.

library(tidyverse)

class<-tribble(
  ~name,~sex,~age,~height,~weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
  "Carol","F",14,62.8,102.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
  "Jane","F",12,59.8,84.5,
  "Janet","F",15,62.5,112.5,
  "Jeffrey","M",13,62.5,84,
  "John","M",12,59,99.5,
  "Joyce","F",11,51.3,50.5,
  "Judy","F",14,64.3,90,
  "Louise","F",12,56.3,77,
  "Mary","F",15,66.5,112,
  "Philip","M",16,72,150,
  "Robert","M",12,64.8,128,
  "Ronald","M",15,67,133,
  "Thomas","M",11,57.5,85,
  "William","M",15,66.5,112,
)

only_one_in_group<-class %>%  
  group_by(age) %>%   
  mutate(nrows=n()) %>%   
  filter(nrows==1)