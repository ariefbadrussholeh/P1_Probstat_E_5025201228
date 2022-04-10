# P1_Probstat_E_5025201228
Laporan Praktikum Modul 1 Probabilitas dan Statistik 2022

Distribusi Probabilitas

**Nama  : Arief Badrus Sholeh**

**NRP   : 5025201228**

**Kelas : Probabilitas dan Statistik E**

***

## Soal 1 
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### 1.a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik).

``` r
x = 3
prob = 0.20

## a
dgeom(x, prob)
```

![1.a](screenshot/1.a.png)

**Hasil** : 0.1024

**Penjelasan** : Menggunakan fungsi `dgeom()` untuk mencari distribusi geometrik dengan diketahui nilai `x = 3` dan `prob = 0.20`.

### 1.b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ).

``` r
## b
n = 10000
data1 = rgeom(n, prob)
mean(data1 == 3)
```

![1.b](screenshot/1.b.png)

**Hasil** : 0.1067

**Penjelasan** : Menggunakan fungsi `rgeom()` untuk mencari distribusi geometrik dengan n data random, kemudian dicari `mean()` untuk `X == 3`.

### 1.c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

**Jawab** :

Berdasarkan perhitungan ataupun nilai bangkitan, fungsi probabilitasnya memiliki rentang nilai yang tidak berbeda, dimana hasil pada poin a adalah 0.1024 dan poin b adalah 0.1067.

### 1.d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

``` r
## d
hist(data1)
```

![1.d](screenshot/1.d.png)

**Penjelasan** : menggunakan fungsi `hist()` untuk membuat histogram distribusi geometrik dari `data1`

### 1.e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

``` r
## e
mean(data1)
var(data1)
```

![1.e](screenshot/1.e.png)

**Hasil** : 
- Rataan (μ)  = 3.9981
- Varian (σ²) = 19.74407

**Penjelasan** : Menggunakan fungsi `mean()` dan `var()` untuk mencari nilai rataan dan varian dari `data1`.

***

## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### 2.a
Peluang terdapat 4 pasien yang sembuh.

``` r
x = 4
size = 20
prob = 0.2

## a
dbinom(x, size, prob)
```

![2.a](screenshot/2.a.png)

**Hasil** : 0.2181994

**Penjelasan** : Menggunakan fungsi `dbinom()` untuk mencari distribusi binomial dengan diketahui nilai `x = 4`, `size = 20`, dan `prob = 0.2`.

### 2.b
Gambarkan grafik histogram berdasarkan kasus tersebut.

``` r
## b
n = 100
data2 = rbinom(n, size, prob) ;data2
hist(data2)
```

![2.b](screenshot/2.b.png)

![2.b.1](screenshot/2.b.1.png)

**Penjelasan** : Menggunakan fungsi `rbinom()` untuk mencari distribusi binomial dengan n data random (karena tidak disebutkan disoal, mengambil nilai sembarang `n = 100`) dan fungsi `hist()` untuk membuat histogram distribusi binomial dari `data2`.

### 2.c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.

``` r
## c
mean(data2)
var(data2)
```

![2.c](screenshot/2.c.png)

**Hasil** :
- Rataan (μ)  = 3.98
- Varian (σ²) = 3.252121

**Penjelasan** : Menggunakan fungsi `mean()` dan `var()` untuk mencari nilai rataan dan varian dari `data2`.

***

## Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson).

### 3.a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

``` r
x = 6
lambda = 4.5

## a
dpois(x, lambda)
```

![3.a](screenshot/3.a.png)

**Hasil** : 0.1281201

**Penjelasan** : Menggunakan fungsi `dpois()` untuk mencari distribusi poission dengan diketahui nilai `x = 6` dan `lambda = 4.5`

### 3.b
Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)

``` r
## b
n = 365
data3 = rpois(n, lambda) ;data3

hist(data3)
```

![3.b](screenshot/3.b.png)

![3.b.1](screenshot/3.b.1.png)

**Penjelasan** : Menggunakan fungsi `rpois()` untuk mencari distribusi poisson dengan n data random dan fungsi `hist()` untuk membuat histogram dari `data3`

### 3.c
Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan.

**Jawab** :

Jika kita cari nilai rata-rata untuk distribusi poisson pada poin b dengan menggunakan syntax

``` r
## c
mean(data3 == 6)
```

![3.c](screenshot/3.c.png)

Maka nilai yang diperoleh adalah 0.1342466.

Dapat diambil kesuimpulan bahwa berdasarkan perhitungan ataupun nilai bangkitan, fungsi probabilitasnya memiliki rentang nilai yang tidak berbeda, dimana hasil pada poin a adalah 0.1281201.


### 3.d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

``` r
## d
mean(data3)
var(data3)
```

![3.d](screenshot/3.d.png)

**Hasil** :
- Rataan (μ)  = 4.575342
- Varian (σ²) = 4.201039

***Penjelasan** : Menggunakan fungsi `mean()` dan `var()` untuk mencari nilai rataan dan varian dari `data3`.

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4.a
Fungsi Probabilitas dari Distribusi Chi-Square.

``` r
x = 2
df = 10

## a
dchisq(x, df)
```

![4.a](screenshot/4.a.png)

**Hasil** : 0.007664155

**Penjelasan** : Menggunakan fungsi `dchisq()` untuk mencari distribusi chi-square.

### 4.b
Histogram dari Distribusi Chi-Square dengan 100 data random.

``` r
## b
n = 100
data4 = rchisq(n, df) ;data4

hist(data4)
```

![4.b](screenshot/4.b.png)

![4.b.1](screenshot/4.b.1.png)

**Penjelasan** : Menggunakan fungsi `rchisq()` untuk mencari distribusi chi-square dengan n data random dan fungsi `hist()` untuk membuat histogram dari `data4`

### 4.c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.

``` r
## c
mean(data4)
var(data4)
```

![4.c](screenshot/4.c.png)

**Hasil** :
- Rataan (μ)  = 10.19431 
- Varian (σ²) = 23.1238

**Penjelasan** : Menggunakan fungsi `mean()` dan `var()` untuk mencari nilai rataan dan varian dari `data4`.

***

## Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### 5.a
Fungsi Probabilitas dari Distribusi Exponensial

``` r
x = 3

## a
dexp(x)
```

![5.a](screenshot/5.a.png)

**Hasil** : 0.04978707

**Penjelasan** : Menggunakan fungsi `dexp()` untuk mencari distribusi exponensial dengan diketahui nilai `x = 3`.

### 5.b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

``` r
## b
set.seed(1)
hist(rexp(10, x))
hist(rexp(100, x))
hist(rexp(1000, x))
hist(rexp(10000, x))
```

- `n = 10`
![5.b.1](screenshot/5.b.1.png)
- `n = 100`
![5.b.2](screenshot/5.b.2.png)
- `n = 1000`
![5.b.3](screenshot/5.b.3.png)
- `n = 10000`
![5.b.4](screenshot/5.b.4.png)

**Penjelasan** : Menggunakan fungsi `rexp()` untuk mencari distribusi exponensial dengan n data random dan fungsi `hist()` untuk membuat histogramnya.

### 5.c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

``` r
## c
n = 100
data5 = rexp(n, x)
mean(data5)
var(data5)
```

![5.c](screenshot/5.c.png)

**Hasil** : 
- Rataan (μ)  = 0.3675159
- Varian (σ²) = 0.1202852

**Penjelasan** : Menggunakan fungsi `mean()` dan `var()` untuk mencari nilai rataan dan varian dari `data5`.

***

## Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### 6.a
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

``` r
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
```

![6.a](screenshot/6.a.png)

![6.a.1](screenshot/6.a.1.png)

**Hasil** : 
- Z-score = 1.123113

**Penjelasan** :


### 6.b
Generate Histogram dari Distribusi Normal dengan breaks 50

``` r
## b
hist(data5, main = "5025201228_Arief Badrus Sholeh_Probstat_E_DNHistogram", breaks = 5, col = "blue")
```

![6.b](/5025201228_Arief%20Badrus%20Sholeh_Probstat_E_DNHistogram.png)

**Penjelasan** : Menggunkan fungsi `hist()` untuk meng-Generate histogram distribusi normal dengan `breaks = 5`.

### 6.c
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

``` r
## c
var(data5)
```

![6.c](screenshot/6.c.png)

**Hasil** :
- Varian (σ²) = 65.97666

**Penjelasan** : Menggunakan fungsi `var()` untuk mencari nilai varian dari `data5`.

***