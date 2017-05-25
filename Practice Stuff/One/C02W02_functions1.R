#Simple function
add2 <- function(x,y) {
  x+y
}

#Another simple function
above10 <- function(x) {
  use <- x > 10
  x[use]
}

#using defaults in arguments
abovenum <- function(a,b=11) {    #11 is default here
  use <- x>b
  x[use]
}

#slightly complicated example
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <-  mean(y[,i], na.rm = removeNA)
  }
  means
}

#Lazy Evaluation
f <- function(a,b) {
  a^2                     #this does not cause a problem if you send a single value to the function because b is not being evaluated anywhere
}

f2 <- function (a,b) {
  print (a)
  print (b)               #this causes a problem if you send only one argument
}


