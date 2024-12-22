#############################################################################Renaming variables###########################################
##########################################################################################################################################

#The provided R Tidyverse code snippet creates a new data frame named "renamed" by renaming variables in the existing data frame "class."

#The rename function is used to specify the renaming of variables. In this case, the variable "Age" is renamed to "Age_years" and the variable "Height" is renamed to "Height_in."

#The rename function takes two arguments: the first argument is the data frame, and the subsequent arguments are the old variable names followed by the new variable names.

#By using the rename function, the variables in the "class" data frame are renamed, and the resulting data frame is assigned to the "renamed" object.

#This R Tidyverse code snippet demonstrates how to create a new data frame named "renamed" that is identical to the "class" data frame, but with renamed variables. By specifying the old variable names and their corresponding new names, you can modify the variable names to improve clarity and consistency in your data analysis.

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Alice","F",13,56.5,84,
)


renamed<-rename(class,Age_years=Age, Height_in=Height)