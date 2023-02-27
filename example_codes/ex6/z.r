data1 <- read.csv("example2.csv",header = TRUE)
data2 <- data1$jap
data3 <- data1$mat
data4 <- data1$eng

devj <- sqrt(mean((data2-mean(data2))^2))
devm <- sqrt(mean((data3-mean(data3))^2))
deve <- sqrt(mean((data4-mean(data4))^2))

j <- c(84,75,59,45,50)
m <- c(84,39,34,69,77)
e <- c(65,54,42,81,46)

zj <- (data2-mean(data2))/devj
zm <- (m-mean(data3))/devm
ze <- (e-mean(data4))/deve

# t1 <- c(5,5,15,15,25,25,35,35,45,45,45,45,55,55,65,65,75,75,85,85)
# t1 <- c(15,25,25,35,35,35,35,45,45,45,45,45,45,55,55,55,55,65,65,75)
t1 <- c(45,25,35,35,45,45,45,45,45,45,45,45,45,45,55,55,45,65,45,45)
t2 <- table(t1)
hist(t1,breaks=seq(1,100,by=10),main="")

data2 <- t1-mean(t1)
data3 <- sum(data2^2)
data4 <- sqrt(data3/length(t1))

kurt <- sum(((data2)/data4)^4)/length(t1)-3