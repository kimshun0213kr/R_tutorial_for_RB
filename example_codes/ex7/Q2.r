data <- read.csv("example.csv",header = FALSE)

data1 <- data[,1]

me <- mean(data1)

ss <- sum((data1-me)^2)
v2 <- sum((data1-me)^2)/(length(data1)-1)
cv <- sqrt(v2)/me
se <- sqrt(v2/length(data1))