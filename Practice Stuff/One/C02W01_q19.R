a <- read.csv('hw1_data.csv')
b <- a[a$Month==6,]
mean(b$Temp)
