### Regression

First <- c(20,32,35,34,40,51,52,56,57,68)
Second <- c(23,34,36,44,42,51,54,57,54,62)

#2
#a.
plot(First, Second)

r <- cor(First, Second) #answer : 0.969

SE <- sqrt((1-r^2)/(length(First)-2))  #answer : 0.873

#d : sample distribution of r
#e.
rt <- cor.test(First, Second)
rt$conf.int
#answer : 0.87-0.99

#3
#a. 
First_B <- First + 30
Second_B <- Second + 30

rB <-cor(First_B, Second_B)
#same as r 
#b.
#same as r >>> only extreme values affect!!!

#4. 
b1 <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
b2 <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)

plot(b1, b2)
# positive linear (maybe),  extreme value!

#b.
model <- lm(b2~b1)
#lm(y~X) y : reponsive varibale / x : predictor(explanatory variable)
abline(model)

#c.
#H0 : home range size does not predict infant mortality (beta = 0)
#Ha : home range size does predict infant mortality

#answer : b = 9.955, a=16.280, 
summary(model)
a <-model$coefficients[1]
b <- model$coefficients[2]
