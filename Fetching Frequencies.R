##################################Fetching Frequencies#####################################
###########################################################################################

#These R Tidyverse code snippets demonstrate how to perform frequency analysis on variables in 
#a data frame named "class" using the count function from the dplyr package. The results of the 
#frequency analysis are stored in separate data frames named "counts01" and "counts02" for 
#different variable configurations.

#In the first code snippet:
  
#The count function is used to compute frequencies of the variable "Sex" in the "class" data frame.
#The first argument specifies the input data frame, which is "class" in this case.
#The second argument specifies the variable "Sex" to be analyzed.
#After executing the first code snippet, the "counts01" data frame will contain the frequency counts for the variable "Sex" in the "class" data frame.

#In the second code snippet:
  
#The count function is used to compute frequencies of the combination of variables "Sex" and "Age" in a different data frame named "class1".
#The first argument specifies the input data frame, which is "class1" in this case.
#The subsequent arguments specify the variables "Sex" and "Age" for the cross-tabulation.
#After executing the second code snippet, the "counts02" data frame will contain the frequency counts for the combinations of "Sex" and "Age" in the "class1" data frame.

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
)

class1<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)


counts01<-count(class,Sex)


counts02<-count(class1,Sex,Age)

