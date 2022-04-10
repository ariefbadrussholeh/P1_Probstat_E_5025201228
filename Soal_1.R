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
## Penjelasan di Github

## d
hist(data1, main = "Histogram Geometrik", col = 'red')

## e
mean = 1/prob ;mean

var = (1-prob)/prob^2 ;var