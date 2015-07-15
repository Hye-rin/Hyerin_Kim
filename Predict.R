head(mtcars)

bad <-kmeans(mtcars, centers=2)
plot(mtcars$mpg, mtcars$hp, col=bad$)







##Hierarchical in R

cars_norm <- scale(mtcars)
d <- dist(cars_norm, method="euclidean")
hc <-hclust(d, method="complete")



iris
summary(iris)

library("klaR")
library("caret")
library("class")
library("e1071")

classifier <- naiveBayes(iris[,1:4], iris[,5])
table(predict(classifier, ris[,-5], iris[,5]))

install.packages('ElemStatLearn')
library('ElemStatLearn')
install.packages('train')
library('train')

sub = sample(nrow(spam), floor(nrow(spam)* 0.9))
train = spam[sub,]
test = spam[-sub,]

xTrain=train[,-58]
yTrain= train$spam

xTest = test[,-58]
yTest =test$spam


model = train(xTrain,yTrain, 'nb', trControl=trainControl(method='cv', number=10))


house=read.csv("C:/Users/main/Documents/카카오톡 받은 파일/house.csv", header=T)
house
plot(house)
plot(house$X1,house$Y1)
ye.model <- lm(house$Y1~house$X1, data=house)
house$pred <- predict(ye.model, house)
points(house$X1, house$pred, col = "blue", pch =16)
lines(house$X1, house$pred, col = "red")



newhouse <- data.frame(X1 = seq(1,768))
newhouse$pred <- predict(ye.model, newhouse)
plot(newhouse)
plot(newhouse$X1, newhouse$pred)
points(newhouse$X1, newhouse$pred, col= "green")
points(newhouse$X1, newhouse$pred, col = "green", pch=3)
lines(newhouse$X1, newhouse$pred, col = "purple")

par(mfrow=c(3,2))


prop.table(table(predict(model$finalModel, xTest)$class, yTest ))
