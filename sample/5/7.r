data1 <- read.csv("ex2.csv",header = TRUE,row.names = 1)
data_jap <- data1$jap

data2 <- table(factor(data_jap,levels = 1:100))
data3 <- array(data2)
sumdata <- sum(data3)

table_percent <-function(defaultdata,width,start,end,data_width){
    data_range <- sum(defaultdata)
    class <- c()
    c_value <- c()
    freq <- c()
    c_freq <- c()
    rel <- c()
    com_rel <- c()
    width_data <- width*data_width-data_width
    for(i in seq(1,length(defaultdata)-width+1,width)){
        tmp_c <- c()
        for(k in c(0:width-1)){
            tmp_c <- append(tmp_c,i+k)
        }
        min <- as.character(start+(i-1)*data_width)
        min_str <- as.integer(min)
        max <- as.character((start+(i-1)*data_width)+width_data)
        max_str <- as.integer(max)
        tmp_class <- paste0(min ,"~" , max)
        tmp_class_value <- c()
        for(j in seq(min,max,data_width)){
            tmp_class_value <- append(tmp_class_value,j)
        }
        tmp_class_value <- median(tmp_class_value)
        tmp <- defaultdata[c(i:i+width_data)]
        tmp_freq <- sum(defaultdata[tmp_c])
        # print(c(i,i+1,i+2,i+3,i+4))
        tmp_c_freq <- sum(defaultdata[c(1:i+width_data)])
        tmp_rel <- tmp_freq/data_range
        tmp_com_rel <- sum(defaultdata[c(1:i+width_data)])/data_range
        class <- append(class,tmp_class)
        c_value <- append(c_value,tmp_class_value)
        freq <- append(freq,tmp_freq)
        c_freq <- append(c_freq,tmp_c_freq)
        rel <- append(rel,tmp_rel)
        com_rel <- append(com_rel,tmp_com_rel)
    }
    freq_table <- data.frame(class,c_value,freq,c_freq,rel,com_rel)
    return(freq_table)
}

kekka <- table_percent(data3,5,1,100,1)