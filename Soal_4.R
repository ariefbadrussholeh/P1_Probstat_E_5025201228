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