data1 <- read.csv("example.csv",header = FALSE)
data2 <- data1[,1]
mean_data <- mean(data2)
dev <- sqrt(mean((data2-mean_data)^2))
z_score <- (data2-mean_data)/dev

dev_50 <- 10*z_score+50