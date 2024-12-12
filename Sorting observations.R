################################Sorting observations#######################################################
############################################################################################################

#This R Tidyverse code snippet demonstrates how to sort a data frame named "class" based on multiple variables, "Age" and "Height," in ascending and descending order, respectively, using the arrange function from the dplyr package. The sorted data frame is stored in a new data frame named "sorted."

#The arrange function is used to perform the sorting operation. The first argument specifies the input data frame to be sorted, which is "class" in this case. The subsequent arguments define the sorting order by specifying the variables to sort by, which are "Age" and "Height" in this case.

#By default, arrange performs ascending sorting for each variable specified. To sort a variable in descending order, the desc function is used, which is applied to the "Height" variable in this code snippet.

#After executing the arrange function, the "sorted" data frame will contain the same columns and observations as the original "class" data frame, but the rows will be arranged in ascending order based on the "Age" variable and descending order based on the "Height" variable.

library(tidyverse)

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)

sorted<-arrange(class,Age,desc(Height))