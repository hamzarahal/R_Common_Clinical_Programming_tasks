############################### Merging datasets- select unmatched records ############################################################
############################################################################################

#These R Tidyverse code snippets demonstrate how to identify unmatched observations between two 
#data frames, "sex" and "ahw," using the anti_join function from the dplyr package.

#Finding Unmatched Observations (sex): The first code snippet uses the anti_join function to 
#find unmatched observations in the "sex" data frame compared to the "ahw" data frame. The by 
#argument specifies the variable(s) to use for matching, in this case, the "name" variable. 
#The resulting "unmatched" data frame includes observations from the "sex" data frame that do 
#not have a matching "name" in the "ahw" data frame.

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