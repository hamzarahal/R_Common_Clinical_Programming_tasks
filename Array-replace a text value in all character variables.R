#######Arrays - Example - replace a text value in all character variables######
#It creates a new data frame named chardata01 using the pipe operator %>%.
#It takes the existing data frame chardata as the input data.
#It uses the mutate() function to modify the columns of the data frame.
#The across() function is used to specify the columns to apply the transformation to. In this case, it selects all columns that are of character data type (where(is.character)).
#Within the across() function, the ~ symbol indicates that a lambda or anonymous function is being defined.
#The lambda function checks if the lowercase value of each element in the selected columns is equal to "missing".
#If the condition is true, it replaces the value of that element with an empty string ("").
#The modified data frame is assigned to the variable chardata01.
#The resulting data frame chardata01 contains the original data with the character variables updated to remove any occurrences of "_missing_".

library(tidyverse)


chardata<-tribble(
  ~var1,~var2,~var3,~var4,~var5,
  "_missing_","text1","text2","_missing_","text3",
  "text4","text5","_missing_","text6","text7",
  "text8","_missing_","text9","text10","text11",
)



chardata01 <- chardata %>%
  mutate(across(where(is.character), ~ifelse(tolower(.) == "_missing_", "", .))) 