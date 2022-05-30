#1
#A
jumlahResponden = c(1,2,3,4,5,6,7,8,9)
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
dataFrame = data.frame(jumlahResponden, x, y)

findDeviasi = sd(dataFrame$x-dataFrame$y)
findDeviasi

#B
h = dataFrame$y - dataFrame$x
t1 = mean(h)
t2 = mean(h[1:6])
t3 = 6
t4 = sd(h[1:6])
tValue = (t2-t1) / (t4/sqrt(t3))
tValue

pValue = 2*pt(-abs(t), df = t3-1)
pValue

#C
install.packages("BSDA")
library(BSDA)
tValue(h, alternative = 'two.sided', n = tn)

#2
#A
#B
library(BSDA)

tsum.test(
  mean.x = 23500, 
  s.x = sd(3900), 
  n.x = 100
)
#C

#3
#A
sampleMean1 = 3.64
sampleDev1 = 1.67
jumlahSaham0 = 19
sampleMean2 = 2.79
sampleDev2 = 1.32
jumlahSaham1 = 27

totalH0 = (sampleMean1 - 0) / (sampleDev1 / sqrt(jumlahSaham0))
totalH0

totalH1 = (sampleMean2 - 0) / (sampleDev2 / sqrt(jumlahSaham1))
totalH1


#B
tsum.test(
  mean.x=3.64,
  s.x = 1.67,
  n.x = 19,
  mean.y =2.79,
  s.y = 1.32,
  n.y = 27,
  alternative = "greater",
  var.equal = TRUE
)
