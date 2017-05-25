a <- read.csv('hw1_data.csv')
b <- a[a$Month==5,]
c <- complete.cases(b)
d <- b[c, ]
max(d$Ozone)
