data <- read.csv("example3.csv",header = FALSE)
data2 <- data[,1]

data_mean <- mean(data2)

dev1 <- data2 - data_mean
dev2 <- dev1^2
sum_dev <- sum(dev2)

data_length <- length(data2)

disp <- sum_dev/data_length
var1 <- var(data2)
sd1 <- sd(data2)