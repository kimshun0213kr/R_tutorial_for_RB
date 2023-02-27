func1 <- function(masterdata){
    tmp <- 1
    for(i in masterdata){
        tmp <- tmp*i
    }
    return(tmp)
}

data <- c(1:10)
g_mean <- func1(data)^(1/length(data))