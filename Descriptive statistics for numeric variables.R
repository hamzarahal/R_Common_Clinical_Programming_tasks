
#These R Tidyverse code snippets demonstrate how to compute summary statistics on variables in a data frame named "class" using different functions. The results of the summary statistics are stored in separate data frames named "stats01" and "stats02" for different variable configurations.

In the first code snippet:
  
  The summarize function is used to compute summary statistics on the variable "Height" in the "class" data frame.
The first argument specifies the input data frame, which is "class" in this case.
The subsequent arguments specify the summary statistics to be calculated, including count (n), mean, and standard deviation (sd) of the variable "Height".
After executing the first code snippet, the "stats01" data frame will contain the summary statistics for the variable "Height" in the "class" data frame.

In the second code snippet:
  
  The %>% operator is used to pipe the "class" data frame into a sequence of operations.
The group_by function is used to group the data by the variable "Sex".
The summarize function is used to compute summary statistics within each group.
The n function is used to calculate the count of observations, and the mean and sd functions are used to calculate the mean and standard deviation of the variable "Height" within each group.
After executing the second code snippet, the "stats02" data frame will contain the summary statistics for the variable "Height" in the "class" data frame, grouped by the variable "Sex".


class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)

stats01<-summarize(class,n=n( ), mean=mean(Height),sd=sd(Height))

stats02<-class %>%   
  group_by(Sex) %>%   
  summarize(n=n( ), mean=mean(Height),sd=sd(Height))