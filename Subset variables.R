#############################Subset variables################################################
#############################################################################################

#The following R Tidyverse code snippets showcase different techniques to create subsets of data frames by selecting or excluding specific variables based on various criteria.

#The first code snippet demonstrates how to create a new data frame named "subset" by selecting 
#specific variables ("Name," "Sex," and "Age") from an existing data frame called "class" using the select function.

#The second code snippet creates a new data frame named "subset" by excluding specific variables 
#("Height" and "Weight") from the original "class" data frame using the select function.

#In the third code snippet, a new data frame named "subset" is created by excluding variables from the "class" data frame based on a pattern. The select function, combined with the starts_with function, removes variables that start with either "H" or "W" from the resulting "subset" data frame.

#The fourth code snippet also creates a new data frame named "subset" by excluding variables from the "class" data frame based on a pattern. Here, the select function, along with the ends_with function, removes variables that end with the letter "t" from the resulting "subset" data frame.

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