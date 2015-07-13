house=read.csv("C:/Users/main/Documents/카카오톡 받은 파일/house.csv", header=T)
house

X1 <- house$X1
Y1 <- house$Y1
Y2 <- house$Y2
qplot(house$X1, house$Y1, size=Y2)