


library(tidyverse)

sex<-tribble(
  ~name,~sex,
  "Alfred","M",
  "Henry","M",
  "Mary","F",
)

ahw<-tribble(
  ~name,~age,~height,~weight,
  "Alfred",14,69,112.5,
  "Henry",14,63.5,102.5,
  "James",12,57.3,83,
)

unmatched<-anti_join(sex,ahw,by=c("name"))


unmatched<-anti_join(ahw,sex,by=c("name"))