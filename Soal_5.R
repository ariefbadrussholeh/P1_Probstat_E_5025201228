#  =================== 5 ==================== 
x = 3

## a
dexp(x)

## b
set.seed(1)
hist(rexp(10, x))
hist(rexp(100, x))
hist(rexp(1000, x))
hist(rexp(10000, x))

## c
n = 100
data5 = rexp(n, x)
mean(data5)
var(data5)