#  =================== 3 ==================== 
x = 6
lambda = 4.5

## a
dpois(x, lambda)

## b
n = 365
data3 = rpois(n, lambda) ;data3

hist(data3)

## c
mean(data3 == 6)

## d
mean(data3)
var(data3)