# 1 ------------------------ 
x = 3
prob = 0.20

## a
dgeom(x, prob)

## b
n = 10000
data1 = rgeom(n, prob)
mean(data1 == 3)

## c


## d
hist(data1)

## e
mean(data1)
var(data1)

# 2 ------------------------ 
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

