data1 <- read.csv("example2.csv",header = TRUE,row.names = 1)
data_jap <- data1$jap

source("https://raw.githubusercontent.com/kimshun0213kr/R_tutorial_for_RB/main/example_codes/ex5/source.r")

kekka <- table_percent(data_jap,5,1,100,1)

mode1 <- kekka[which.max(kekka[,3]),2]

data2 <- data_jap-mean(data_jap)
data3 <- sum(data2^2)
data4 <- sqrt(data3/length(data_jap))

skew <- sum(((data2)/data4)^3)/length(data_jap)

kurt <- sum(((data2)/data4)^4)/length(data_jap)-3