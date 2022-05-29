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