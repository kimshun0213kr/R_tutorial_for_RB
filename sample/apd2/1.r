y <- c(0.002,0.004,0.006,0.008,0.010,0.012,0.014)
x <- c(0.11,0.22,0.32,0.42,0.51,0.61,0.69)

ans <- lsfit(x,y)
con <- ans$coefficients
x_con <- x*con[2]-con[1]
plot(x,y,col=2,ylab="吸光度",xlab="濃度")
abline(ans)