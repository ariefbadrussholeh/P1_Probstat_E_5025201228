#  =================== 6 ====================
n = 100
mean = 50
sd = 8

## a
data5 = rnorm(n, mean, sd) ;data5

mean(data5)

X1 = 50
X2 = 51

Z2 = (X2-mean(data5))/sd(data5) ;Z2
Z1 = 1-((X1-mean(data5))/sd(data5)) ;Z1
Z = Z1 +Z2 ;Z

plot(data5, main = "Plot Data5", col = "salmon", pch = 1)

## b
hist(data5, main = "5025201228_Arief Badrus Sholeh_Probstat_E_DNHistogram", breaks = 50, col = "salmon")

## c
var(data5)