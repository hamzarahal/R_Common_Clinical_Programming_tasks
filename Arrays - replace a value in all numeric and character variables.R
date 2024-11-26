################Arrays - Example - replace a value in all numeric and character variables################################
###################################################################################################################

#It creates a new dataset named alldata01 by applying transformations to an existing dataset named alldata.
#The mutate function is used to modify the dataset columns.
#The across function is used to specify the columns to be modified.
#The where function is used within across to select columns based on their data type (is.character and is.numeric).
#For character columns, the if_else function is applied to replace values. It checks if the lowercase value of each character column (tolower(.x)) is equal to "missing". If the condition is true, it replaces the value with an empty string (""), otherwise, it keeps the original value ( .x).
#For numeric columns, another if_else function is applied to replace values. It checks if the value of each numeric column ( .x) is equal to 9909. If the condition is true, it replaces the value with 0, otherwise, it keeps the original value ( .x).
#The modifications are applied to the specified columns using the %>% pipe operator.
#The resulting dataset, alldata01, contains the modified data with the specified replacements.

library(tidyverse)

alldata<-tribble(
  ~var1,~var2,~var3,~var4,~var5,~var6,~var7,~var8,~var9,~var10,
  9909,1,2,3,4,"_missing_","text1","text2","_missing_","text3",
  5,9909,6,7,8,"text4","text5","_missing_","text6","text7",
  9,3,9909,2,7,"text8","_missing_","text9","text10","text11",
)


alldata01 <- alldata %>%
  mutate(
    across(where(is.character), ~ if_else(tolower(.x) == "_missing_", "", .x)),
    across(where(is.numeric), ~ if_else(.x == 9909, 0, .x))
  )