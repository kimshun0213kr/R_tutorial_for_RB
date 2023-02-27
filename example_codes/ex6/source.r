func1 <- function(masterdata){
    tmp <- 1
    for(i in masterdata){
        tmp <- tmp*i
    }
    return(tmp)
}