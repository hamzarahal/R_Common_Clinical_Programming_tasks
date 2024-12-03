#################################Handling duplicates#####################################################
#########################################################################################################


#These R Tidyverse code snippets demonstrate techniques to eliminate duplicate observations in a dataset using different approaches.

#nodupkey:
  
  #In the first code snippet, the dataset "ae" is processed using the %>% pipe operator. The data is arranged by the variables "subjid," "term," and "stdtc" using the arrange() function. Then, the data is grouped by "subjid" and "term" using the group_by() function. Finally, the slice(1) function is applied to keep only the first observation within each group, effectively removing duplicates based on the key variables. The resulting dataset contains unique observations based on the defined key variables.

#noduprec/nodup:
  
 # In the second code snippet, the dataset "ae1" is processed. The distinct() function is applied to the dataset, which removes duplicate records based on all variables. The resulting dataset contains unique observations without considering any specific key variables.

#These R Tidyverse code snippets demonstrate how to handle duplicate observations in a dataset by arranging, grouping, and selecting unique observations based on specific key variables or considering all variables. The resulting datasets will contain the unique observations based on the defined criteria.


ae<-tribble(
  ~subjid,~term,~stdtc,
  "1001","Headache","2010-01-05",
  "1001","Headache","2010-01-08",
  "1001","Nausea","2010-01-08",
  "1002","Headache","2010-02-15",
)

ae1<-tribble(
  ~subjid,~term,~stdtc,
  "1001","Headache","2010-01-05",
  "1001","Headache","2010-01-08",
  "1001","Nausea","2010-01-08",
  "1002","Headache","2010-02-15",
  "1002","Headache","2010-02-15",
)


#---------------------------------------
#duplicate based on key variables (nodupkey)
#---------------------------------------
nodupkey<-ae %>%   
  arrange(subjid,term,stdtc) %>%   
  group_by(subjid,term) %>%   
  slice(1)

#---------------------------------------
#duplicate record (noduprec/nodup)
#---------------------------------------

noduprec<-ae1 %>%   
  distinct()