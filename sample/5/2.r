data1 <- read.csv("example.csv",header = TRUE,row.names = 1)
data_jap <- data1$jap

source("https://raw.githubusercontent.com/kimshun0213kr/R_tutorial_for_RB/main/example_codes/ex5/source.r")

kekka <- table_percent(data_jap,5,1,100,1)