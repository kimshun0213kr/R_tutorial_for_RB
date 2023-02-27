data <- c(1:10)
me1 <- mean(data)

ss1 <- sum((data-me1)^2)
ss2 <- sum((data)^2)-((sum(data)^2)/length(data))