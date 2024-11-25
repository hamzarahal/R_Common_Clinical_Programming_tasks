###Arrays - Example - replace a value in all numeric variables
#It creates a new data frame named numericdata01.
#It uses the %>% operator to pipe the data frame numericdata into the subsequent operations.
#The mutate() function is used to modify the data frame by applying transformations to selected columns.
#The across() function is used to specify the columns on which the mutation should be applied. In this case, it selects all columns where the values are numeric using the where(is.numeric) condition.
#The ~ if_else(. == 9909, 0, .) expression is a formula that defines the mutation for each selected column.
#It checks if the current value in the column is equal to 9909 using the == operator.
#If the condition is true, it replaces the value with 0; otherwise, it keeps the original value.
#The resulting data frame, numericdata01, contains the original data with the specified replacements.

library(tidyverse)

numericdata<-tribble(
  ~var1,~var2,~var3,~var4,~var5,
  9909,1,2,3,4,
  5,9909,6,7,8,
  9,3,9909,2,7,
)


numericdata01 <- numericdata %>%
  mutate(across(where(is.numeric), ~ if_else(. == 9909, 0, .)))