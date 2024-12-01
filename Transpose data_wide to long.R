##################################Transpose data - wide to long#################################################
######################################################################################################################

#The pivot_longer function in R, part of the Tidyverse package, is used to transform a dataset from wide format to long format. In this code snippet, the dataset "wide" is transformed into a new dataset named "long" using the pivot_longer function.
#cols = c(HGB, ALT, AST): This specifies the columns to be transformed from wide to long format. In this case, the variables "HGB", "ALT", and "AST" are selected.

#names_to = "lbtestcd": This specifies the name of the new variable that will contain the column names from the wide dataset. The values in this variable will correspond to the original column names.

#values_to = "lbstresn": This specifies the name of the new variable that will contain the values from the wide dataset. The values in this variable will correspond to the values previously present in the selected columns.

#By using the pivot_longer function with the specified arguments, the "wide" dataset is transformed into the "long" dataset. The "long" dataset will have variables "lbtestcd" (containing the original column names) and "lbstresn" (containing the values from the wide dataset), along with any other existing variables.


wide<-tribble(
  ~usubjid,~HGB,~ALT,~AST,
  "1001",13,30,23,
  "1002",12,28,15,
)

long<-pivot_longer(wide,
                   cols=c(HGB,ALT,AST),
                   names_to = "lbtestcd",
                   values_to = "lbstresn")