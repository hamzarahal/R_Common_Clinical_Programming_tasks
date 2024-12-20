############################Adding new variables#######################################
########################################################################################

#The provided R Tidyverse code snippets demonstrate data manipulation techniques for creating 
#new variables based on the values of existing variables in the "dm" data frame.

#In the first code snippet:
  
#The mutate function from the dplyr package is used to create a modified data frame named "dm02" based on the "dm" data frame.
#The mutate function allows for the creation of new variables while preserving the existing variables.
#The new variable "agemon" is created by multiplying the "age" variable by 12.
#The new variable "group" is created and assigned a constant value of 1 for all observations.
#In the second code snippet:
  
#The mutate function is used to create a modified data frame named "dm02" based on the "dm" data frame.
#The case_when function is used within the mutate function to perform conditional assignments for the new variable "agegr1."
#The case_when function allows for multiple conditional statements to be evaluated sequentially.
#The first conditional statement checks if the "age" variable is greater than or equal to 60. If true, the value ">= 60 Years" is assigned to "agegr1."
The second conditional statement checks if the "age" variable is between 20 and 59 (inclusive). If true, the value "20 - < 60 Years" is assigned to "agegr1."
The third conditional statement checks if the "age" variable is less than 20. If true, the value "< 20 Years" is assigned to "agegr1."
These R Tidyverse code snippets demonstrate how to use the mutate function to create new variables in the "dm" data frame. The first snippet creates new variables "agemon" and "group," while the second snippet creates a new variable "agegr1" based on different age groupings using the case_when function.

dm<-tribble(
  ~subjid,~age,
  "1001",35,
  "1002",64,
  "1003",19,
)

dm02<-mutate(dm,agemon=age*12,group=1)


dm02<-mutate(dm,agegr1=case_when(  
  age >=60 ~ ">= 60 Years",  
  between(age,20,59) ~ "20 - < 60 Years",  
  age < 20 ~ "< 20 Years"  ))
