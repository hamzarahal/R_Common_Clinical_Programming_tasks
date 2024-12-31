#############################Subset variables################################################
#############################################################################################

#The following R Tidyverse code snippets showcase different techniques to create subsets of data frames by selecting or excluding specific variables based on various criteria.

#The first code snippet demonstrates how to create a new data frame named "subset" by selecting 
#specific variables ("Name," "Sex," and "Age") from an existing data frame called "class" using the select function.

#The second code snippet creates a new data frame named "subset" by excluding specific variables 
#("Height" and "Weight") from the original "class" data frame using the select function.

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

subset <- select(class, Name, Sex, Age)


subset <- select(class, -Height, -Weight)

subset<-select(class,-starts_with(c("H","W")))

subset<-select(class,-ends_with("t"))