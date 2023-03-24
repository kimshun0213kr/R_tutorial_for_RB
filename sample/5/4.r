tmp <- c()
tmp_sum <- c()
defaultdata
for(i in seq(1,121,11)){
    tmp <- append(defaultdata[i:i+10])
}

tmps <- 0
a <- c(1:10)
for(j in a){
    tmps <- tmps + j
}
print(a)