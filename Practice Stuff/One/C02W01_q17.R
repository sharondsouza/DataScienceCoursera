a <- read.csv('hw1_data.csv')
b <- complete.cases(a)
c <- a[b,
       ]
mean(c$Ozone)
