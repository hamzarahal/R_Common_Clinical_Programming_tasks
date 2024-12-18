######################################Merging datasets#########################################################
###############################################################################################################

#These R Tidyverse code snippets demonstrate different types of joins performed on the "sex" 
#and "ahw" data frames using the dplyr package functions. Each join combines the data frames 
#based on a common variable, "Name," and creates a new data frame with the merged data.

#Full Join: The full_join function is used to perform a full join on the "sex" and "ahw" data 
#frames based on the "Name" variable. The resulting data frame, "full," contains all 
#observations from both data frames, matching observations where possible and filling in 
#missing values with NA.

#Left Join: The left_join function is used to perform a left join on the "sex" and "ahw" data 
#frames based on the "Name" variable. The resulting data frame, "left," includes all 
#observations from the "sex" data frame and matching observations from the "ahw" data frame. 
#Observations that do not have a match in the "ahw" data frame will have missing values for 
#the "ahw" variables.

#Right Join: The right_join function is used to perform a right join on the "sex" and "ahw" data frames based on the "Name" variable. The resulting data frame, "right," includes all observations from the "ahw" data frame and matching observations from the "sex" data frame. Observations that do not have a match in the "sex" data frame will have missing values for the "sex" variables.

Inner Join: The inner_join function is used to perform an inner join on the "sex" and "ahw" data frames based on the "Name" variable. The resulting data frame, "inner," includes only the observations that have a matching "Name" in both data frames.


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