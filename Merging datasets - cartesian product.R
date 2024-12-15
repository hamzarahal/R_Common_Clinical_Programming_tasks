###############################Merging datasets - cartesian product###############################################
##################################################################################################################

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