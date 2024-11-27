################################Arrays-repeat same logic on multiple variables################################################
##############################################################################################################################

#The above R Tidyverse code snippet demonstrates how to use the mutate and across functions to modify multiple variables in a dataset. In this example, the dataset enrlment is being processed.
#The across function is used to select multiple variables (icdt_raw, enrldt_raw, randdt_raw) to apply a transformation to. The str_replace_all function is then used within mutate to replace all occurrences of the forward slash ("/") with a space (" ") in the selected variables.
#The tilde (~) notation is used to define an anonymous function to be applied to each selected variable. The dot (.) represents the current variable being processed.
#Finally, the modified values are stored in the new dataset rl01 using the assignment statement mutate(across(...)).

library(tidyverse)
library(stringr)
library(purrr)

enrlment<-tribble(
  ~study,~pt,~icdt_raw,~enrldt_raw,~randdt_raw,
  "CSG001","1001","1/JAN/2010","","",
  "CSG001","1002","1/JAN/2010","4/JAN/2010","",
  "CSG001","1003","1/JAN/2010","3/JAN/2010","3/JAN/2010",
  "CSG001","1004","1/JAN/2010","4/JAN/2010","5/JAN/2010",
  "CSG001","1005","15/JAN/2010","1/FEB/2010","5/FEB/2010",
  "CSG001","1006","18/FEB/2010","1/MAR/2010","1/MAR/2010",
  "CSG001","1007","4/APR/2010","14/APR/2010","14/APR/2010",
  "CSG001","1008","20/JUN/2010","26/JUN/2010","27/JUN/2010",
)

enrl01<-enrlment %>% 
  mutate(across(c(icdt_raw, enrldt_raw, randdt_raw), ~ str_replace_all(., "/", " ")))