#  =================== 5 ==================== 
x = 3

## a
dexp(1, x)

## b
set.seed(1)
hist(rexp(10, x), main = "Histogram Exponential (n = 10)", col = "cyan")
hist(rexp(100, x), main = "Histogram Exponential (n = 100)", col = "cyan")
hist(rexp(1000, x), main = "Histogram Exponential (n = 1000)", col = "cyan")
hist(rexp(10000, x), main = "Histogram Exponential (n = 10000)", col = "cyan")

## c
n = 100
data5 = rexp(n, x)

mean(data5)

var(data5)