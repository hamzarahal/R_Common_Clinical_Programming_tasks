################################Sorting observations#######################################################
############################################################################################################



library(tidyverse)

class<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)

sorted<-arrange(class,Age,desc(Height))