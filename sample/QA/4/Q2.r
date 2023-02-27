Q2_csv <- read.csv("example.csv",header = TRUE,row.names = 1)
Q2_csv70 <- subset(Q2_csv,Q2_csv$mat>=70&Q2_csv$eng>=70)