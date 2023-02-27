data1 <- read.csv("example2.csv",header = TRUE,row.names = 1)
data_mat <- data1$mat

mean_data <- mean(data_mat)
dev <- sqrt(mean((data_mat-mean_data)^2))
z_score <- (data_mat-mean_data)/dev

dev_50 <- 10*z_score+50