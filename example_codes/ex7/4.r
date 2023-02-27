data1 <- c(seq(1,20,2))
data2 <- c(5:14)

me1 <- mean(data1)
me2 <- mean(data2)

v2_1 <- sum((data1-me1)^2)/(length(data1)-1)
v2_2 <- sum((data2-me2)^2)/(length(data2)-1)

cv_1 <- sqrt(v2_1)/me1
cv_2 <- sqrt(v2_2)/me2