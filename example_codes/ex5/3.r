data1 <- data(beavers)
data_jap <- beaver1$temp

data2 <- table(factor(data_jap,levels = seq(36.33,37.53,0.01)))
data3 <- array(data2)
defaultdata <- c()

table_percent <-function(defaultdata,width,start,end,data_width){
    data_range <- sum(defaultdata)
    class <- c()
    c_value <- c()
    freq <- c()
    c_freq <- c()
    rel <- c()
    com_rel <- c()
    tmp <- c()
    width_data <- width*data_width-data_width
    for(i in seq(1,length(defaultdata),width)){
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
        tmp_freq <- sum(defaultdata[c(i:(i+width_data))])
        tmp_c_freq <- sum(defaultdata[c(1:(i+width_data))])
        tmp_rel <- tmp_freq/data_range
        tmp_com_rel <- sum(defaultdata[c(1:(i+width_data))])/data_range
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

kekka <- table_percent(data3,11,36.33,37.53,0.01)