data1 <- read.csv("example.csv",header = TRUE,row.names = 1)
data_jap <- data1$jap

ave1 <- sum(data_jap)/length(data_jap)
ave2 <- mean(data_jap)

med1 <- median(data_jap)

min1 <- min(data_jap)
max1 <- max(data_jap)

summ1 <- summary(data_jap)