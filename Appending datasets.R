#######################################Appending datasets######################################################
################################################################################################################

#This R Tidyverse code snippet demonstrates how to combine two data frames, "males" and "females," into a single data frame named "class" using the bind_rows function from the dplyr package. The bind_rows function vertically stacks the rows from each data frame, resulting in a consolidated data frame.

In the code snippet, the bind_rows function is applied to the "males" and "females" data frames using the syntax bind_rows(males, females). This concatenates the rows from both data frames, preserving their column structure.

By using the bind_rows function, the observations from both "males" and "females" data frames are combined vertically, creating a single data frame that contains data for both males and females.

This technique offers flexibility in data management and is useful when you need to merge datasets with the same variables but different observations. It allows you to consolidate data from multiple sources into a single dataset for further analysis or modeling.

males<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)

females<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
  "Carol","F",14,62.8,102.5,
)


class<-bind_rows(males,females)