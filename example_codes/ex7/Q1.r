G_mean <- function(masterdata){
    tmp <- 1
    for(i in masterdata){
        tmp <- tmp*i
    }
    return(tmp)
}

data <- c(1:100)

me <- mean(data)
g_me <- (G_mean(data))^(1/length(data))
data2 <- data^-1
h_me <- (sum(data2)/length(data))^-1