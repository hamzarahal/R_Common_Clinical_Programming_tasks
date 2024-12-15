###############################Merging datasets - cartesian product###############################################
##################################################################################################################

#This R Tidyverse code snippet demonstrates how to create a new data frame named "dummy02" by 
#performing a cross join between two existing data frames, "dummy01" and "dummy_treatments," 
#using the cross_join function from the dplyr package.
#The cross_join function takes two data frames as arguments and returns a new data frame that 
#combines every row from the first data frame with every row from the second data frame. 
#The resulting "dummy02" data frame will contain all possible combinations of rows 
#between "dummy01" and "dummy_treatments".


library(tidyverse)

dummy01<-tribble(
  ~grouplabel,~statistic,~group,~intord,
  "Sex, n(%)","Male",2,1,
  "Sex, n(%)","Female",2,2,
  "Sex, n(%)","Missing",2,99,
)

dummy_treatments<-tribble(
  ~treatment,
  1,
  2,
  3,
  4,
)

dummy02<-cross_join(dummy01,dummy_treatments)