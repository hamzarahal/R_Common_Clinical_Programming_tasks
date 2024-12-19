#######################################Appending datasets######################################################
################################################################################################################


males<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alfred","M",14,69,112.5,
  "Henry","M",14,63.5,102.5,
  "James","M",12,57.3,83,
)

females<-tribble(
  ~Name,~Sex,~Age,~Height,~Weight,
  "Alice","F",13,56.5,84,
  "Barbara","F",13,65.3,98,
  "Carol","F",14,62.8,102.5,
)


class<-bind_rows(males,females)