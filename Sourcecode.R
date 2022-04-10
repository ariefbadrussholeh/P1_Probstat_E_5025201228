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
dbinom(x, size, prob) ;data2

## b
n = 100
data2 = rbinom(n, size, prob)
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
hist(rexp(10,3))
hist(rexp(100,3))
hist(rexp(1000,3))
hist(rexp(10000,3))

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
x1 = 49
x2 = 50

z2 = (50-mean(data5))/sd(data5) ;z2
z1 = 1-((49-mean(data5))/sd(data5)) ;z1
z = z1 +z2 ;z

plot(data5, main = "Plot Data5", col = "blue", pch = 1)
## b
hist(data5, main = "5025201228_Arief Badrus Sholeh_Probstat_E_DNHistogram", breaks = 5, col = "blue")

## c
var(data5)