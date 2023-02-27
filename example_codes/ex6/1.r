data1 <- read.csv("example.csv",header = FALSE)

data2 <- data1[,1]
data_mean <- mean(data2)

dev1 <- data2 - data_mean
dev2 <- dev1^2
sum_dev <- sum(dev2)

data_length <- length(data2)

disp <- sum_dev/data_length

sqrt1 <- sqrt(disp)
var1 <- var(data2)

sd1 <- sd(data2)
sqrt2 <- sqrt(sd(data2)^2*(data_length-1)/data_length)