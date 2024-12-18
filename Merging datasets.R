######################################Merging datasets#########################################################
###############################################################################################################



library(tidyverse)

sex<-tribble(
  ~Name,~Sex,
  "Alfred","M",
  "Henry","M",
  "Mary","F",
)

ahw<-tribble(
  ~Name,~Age,~Height,~Weight,
  "Alfred",14,69,112.5,
  "Henry",14,63.5,102.5,
  "James",12,57.3,83,
)

full<-full_join(sex,ahw,by="Name")

left<-left_join(sex,ahw,by="Name")

right<-right_join(sex,ahw,by="Name")

inner<-inner_join(sex,ahw,by="Name")