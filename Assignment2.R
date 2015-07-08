###Assignment2
##1
#a
Sample <- c( 90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
mean(Sample)

answer : 92.2

#b 
it might be close to population parameter, but it is not likely to be exactly the same because only samples are given.

#c : 

SE<- sd(Sample)/sqrt(length(Sample))
answer : 1.976529

#d
The spread of the sampling distribution of the sample mean

#e
a <- mean(Sample)
s <- std(Sample)
n <- length(Sample)
error <- qt(0.975,df=n-1)*s/sqrt(n)
left <- a-error
right <- a+error
left
right
left = 91.46195 , right = 92.93805

#f 
the confidence level is 95, so I calculate the error for one-tail confidence level.
95% of the sample from population, the interval will include the true population mean.


##2
male <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
female <- c(223.4,221.5,230.2,224.3,223.8,230.8)
t.test(male,female,alternative="less",var.equal=TRUE)

H0 : male and female have the same mean cholesterol concentrations.
H1 : male and female don't have the same mean cholesterol concentrations.

Two Sample t-test

data:  male and female
t = -0.62681, df = 11, p-value = 0.2718
alternative hypothesis: true difference in means is less than 0
95 percent confidence interval:
-Inf 2.655568
sample estimates:
mean of x mean of y 
224.2429  225.6667 

>>>>>> Since p-value > 0.05 , don't Reject null hypothesis


##3
#a. False. P-value don't show the size of effect.
#b. True. Null hypothesis is rejected.
#c. False.
#d. False.
#e. False. H0 would be rejected becaus P-value is bigger that ес

##4
personA <- c(248,236,269,254,249,251,260,245,239,255)
personB <- c(380,391,377,392,398,374)
personA2 <- 1.5*personA

H0 = personA cells have volume 1.5*personB

t.test(personA2,personB)

data:  personA2 and personB
t = -1.5592, df = 13.749, p-value = 0.1417
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -22.431928   3.565261
sample estimates:
  mean of x mean of y 
375.9000  385.3333 


##5
Standarad deviation calculated for a variable and standard deviation of a statistic or function of random variables is called standard error. 
The standard deviation is a descriptive statistics and standard error is an inferential statistic. 
Standard error speaks about the population and mostly used in testing of hypothesis and construction of confidence intervals for a population parameter.
when add more more samples, standard error goes to zero. 
when add more more samples, standard deviation of sample get closer to standard deviation of population