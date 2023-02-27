data1 <- read.table("Q3.txt",header = FALSE,sep = "\t",skip=12)
data2 <- data1[,2]

hist(data2,breaks=seq(0,100,5),main="テスト結果",xlab="点数",ylab="人数")