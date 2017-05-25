f1 <- character()
f2 <- character()
f3 <- character()
pollutantmean <- function(dir,ptant,id, removeNA=TRUE) {
        for (i in id) {
                if (0<i & i<10) {
                        f1 <- c(f1, paste(dir,'/00',i,'.csv',sep=''))
                        }
                else if (9<i & i<100) {
                        f2 <- c(f2,paste(dir,'/0',i,'.csv',sep=''))
                        }
                else if (99<i & i<333) {
                        f3 <- c(f3,paste(dir,'/',i,'.csv',sep=''))
                }
        }
        files <- c(f1,f2,f3)
        firstdata <- read.csv(files[1])
        print (files)
        #print (firstdata)
        for (file in files) {
                data <- rbind(firstdata,read.csv(files))
        }
        #print(data)
        nc <- ncol(data)
        meanval <- numeric(nc)
        for (i in 1:nc) {
                meanval[i] <- mean(data[,i],na.rm = removeNA)
        }
        print (meanval)
}