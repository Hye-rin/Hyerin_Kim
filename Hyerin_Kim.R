rm(list = ls(all=TRUE))
P <- read.csv("/Users/main/Desktop/UNdata_precipitation.csv")
y1999 <- P[P$Year==1999,]
y2005 <- P[P$Year==2005,]
hist(log10(y1999$Value))
hist(log10(y2005$Value))

  