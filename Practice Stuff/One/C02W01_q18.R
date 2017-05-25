a <- read.csv('hw1_data.csv')
b <- a[a$Ozone>31 & a$Temp>90,]
c <- complete.cases(b)
d <- b[c, ]
mean(d$Solar.R)





