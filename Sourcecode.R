#  =================== 1 ==================== 
x = 3
prob = 0.20

## a
dgeom(x, prob)

## b
n = 10000
data1 = rgeom(n, prob) ;data1
mean(data1 == 3)

## c


## d
hist(data1)

## e
mean(data1)
var(data1)

#  =================== 2 ====================  
x = 4
size = 20
prob = 0.2

## a
dbinom(x, size, prob)

## b
n = 100
data2 = rbinom(n, size, prob) ;data2
hist(data2)

## c
mean(data2)
var(data2)

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

#  =================== 4 ==================== 
x = 2
df = 10

## a
dchisq(x, df)

## b
n = 100
data4 = rchisq(n, df) ;data4

hist(data4)

## c
mean(data4)
var(data4)

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

#  =================== 6 ====================
n = 100
mean = 50
sd = 8

## a
data5 = rnorm(n, mean, sd) ;data5

mean(data5)
X1 = 49
X2 = 50

Z2 = (50-mean(data5))/sd(data5) ;Z2
Z1 = 1-((49-mean(data5))/sd(data5)) ;Z1
Z = Z1 +Z2 ;Z

plot(data5, main = "Plot Data5", col = "blue", pch = 1)

## b
hist(data5, main = "5025201228_Arief Badrus Sholeh_Probstat_E_DNHistogram", breaks = 5, col = "blue")

## c
var(data5)