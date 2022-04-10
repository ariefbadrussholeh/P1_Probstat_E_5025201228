#  =================== 2 ====================  
x = 4
size = 20
prob = 0.2

## a
dbinom(x, size, prob)

## b
n = 100
data2 = rbinom(n, size, prob) ;data2

hist(data2, main = "Histogram Binomial", col = "green")

## c
mean = size * prob ;mean

var = size * prob * (1 - prob) ;var