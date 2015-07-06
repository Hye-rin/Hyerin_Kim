roll two dice and sum their scores
Plot your results for 10 experiments, 100 experiments and 10000experiments
What have learned?

x1 <- sample(1:6,1)
x2 <- sample(1:6,1)
sum(x1, x2)

#number of dice rolls
d=1000

# role two dice 10 times
dice1 <- sample(6, d, replace=TRUE)
dice2 <- sample(6, d, replace=TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)
hist(dice_roll, freq = FALSE)

#cumulative distribution plot
plot(ecdf(dice_roll))

#normal distribution
n <- rnorm(1000, mean = 5, sd=10)
hist(n)

x <- rnorm(1000,70,5)
hist(x, probability = TRUE)