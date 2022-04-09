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

