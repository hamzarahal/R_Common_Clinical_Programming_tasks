

These R Tidyverse code snippets demonstrate techniques for creating subsets of data based on specific criteria, including the use of a counter and obtaining the subset of observations with the lowest height.

In the first code snippet:
  
  The arrange function is used to sort the "class" dataframe in ascending order by the variables "Sex," "Height," "Weight," and "Name."
The group_by function is used to group the observations by the variable "Sex."
The mutate function is used to create a new variable named "counter" using the row_number function, which assigns a sequential number to each observation within each group.
After executing the first code snippet, the "counter" variable in the "class" dataframe will contain the sequential numbers representing the order of observations within each unique value of "Sex."

In the second code snippet:
  
  The arrange function is used to sort the "class" dataframe in ascending order by the variables "Sex" and "Height."
The group_by function is used to group the observations by the variable "Sex."
The slice function is used to select the first observation within each group, which corresponds to the observation with the lowest height.
The select function is used to choose specific variables ("Name," "Sex," and "Height") to include in the resulting dataframe.
After executing the second code snippet, the "lowestheight" dataframe will contain the subset of observations with the lowest height for each unique value of "Sex."

library(tidyverse)
class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
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


counter<-class %>%   
  arrange(Sex,Height,Weight,Name) %>%   
  group_by(Sex) %>%   
  mutate(counter=row_number())


lowestheight<-class %>%   
  arrange(Sex,Height) %>%   
  group_by(Sex) %>%   
  slice(1) %>%   
  select(Name,Sex,Height)