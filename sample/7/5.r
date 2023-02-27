data1 <- c(seq(1,91,10))
data2 <- c(1:91)
me1 <- mean(data1)
me2 <- mean(data2)
v2_1 <- sum((data1-me1)^2)/(length(data1)-1)
v2_2 <- sum((data2-me2)^2)/(length(data2)-1)

se_1 <- sqrt(v2_1/length(data1))
se_2 <- sqrt(v2_2/length(data2))