###########################Transpose data - long to wide###################################
###########################################################################################


#The pivot_wider() function is a part of the Tidyverse package in R, specifically the tidyr package. It is used to reshape a dataset from long format to wide format. In this code snippet, the dataset "long" is transformed into a new dataset named "wide" using the pivot_wider() function.
#id_cols = usubjid: This argument specifies the variable "usubjid" as the identifier column. Each unique value of "usubjid" will become a separate observation in the wide dataset.
#values_from = lbstresn: This argument specifies the variable "lbstresn" from which the values will be extracted and spread across the wide dataset.
#names_from = lbtestcd: This argument specifies the variable "lbtestcd" whose unique values will become the column names in the wide dataset.
#By calling pivot_wider() with the specified arguments, the "long" dataset is reshaped into the "wide" dataset. Each unique value of "usubjid" becomes a separate observation, and the values from "lbstresn" are spread across the wide dataset with new columns created based on the unique values of "lbtestcd".

long<-tribble(
  ~usubjid,~lbtestcd,~lbstresn,
  "1001","HGB",13,
  "1001","ALT",30,
  "1001","AST",23,
  "1002","HGB",12,
  "1002","ALT",28,
  "1002","AST",15,
)


wide<-pivot_wider(long,
                  id_cols=usubjid,
                  values_from=lbstresn,
                  names_from = lbtestcd)