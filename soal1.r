#A
jumlahResponden = c(1,2,3,4,5,6,7,8,9)
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
dataFrame = data.frame(jumlahResponden, x, y)

findDeviasi = sd(dataFrame$x-dataFrame$y)
findDeviasi

