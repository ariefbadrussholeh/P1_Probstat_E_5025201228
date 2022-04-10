#  =================== 3 ==================== 
x = 6
lambda = 4.5

## a
dpois(x, lambda)

## b
n = 365
data3 = rpois(n, lambda) ;data3

hist(data3, main = "Histogram Poisson", col = "blue")

## c
mean(data3 == 6)
## Penjelasan ada di Github

## d
mean = lambda ;mean

var = lambda ;var