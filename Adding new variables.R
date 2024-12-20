############################Adding new variables#######################################
########################################################################################

dm<-tribble(
  ~subjid,~age,
  "1001",35,
  "1002",64,
  "1003",19,
)

dm02<-mutate(dm,agemon=age*12,group=1)


dm02<-mutate(dm,agegr1=case_when(  
  age >=60 ~ ">= 60 Years",  
  between(age,20,59) ~ "20 - < 60 Years",  
  age < 20 ~ "< 20 Years"  ))
