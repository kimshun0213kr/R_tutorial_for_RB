data1 <- read.csv("example2.csv",header = TRUE,row.names = 1)
data_sci <- data1$sci

data2 <- data_sci-mean(data_sci)
data3 <- sum(data2^2)
data4 <- sqrt(data3/length(data_sci))

skew <- sum(((data2)/data4)^3)/length(data_sci)
kurt <- sum(((data2)/data4)^4)/length(data_sci)-3