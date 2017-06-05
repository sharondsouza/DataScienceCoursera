f1 <- character()
f2 <- character()
f3 <- character()
pollutantmean <- function(dir,ptant,id=1:332) {
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
        numfiles <- length(files)
        print (files)
        data <- read.csv(files[1])
        num=2
        while (num <= numfiles){
                data <- rbind(data,read.csv(files[num]))
                num=num+1
        }
        goodnit <- complete.cases(data[ ,3])
        goodsul <- complete.cases(data[ ,2])
        goodnitdata <- data[goodnit, ]
        goodsuldata <- data[goodsul, ]
        #print(goodnitdata)
        #print(goodsuldata)
        nitcol <- goodnitdata[ ,3]
        sulfcol <- goodsuldata[ ,2]
        if (ptant == 'sulfate') {
                sulfate_mean <- mean(sulfcol) 
                print(sulfate_mean)
        }
        else if (ptant == 'nitrate') {
                nitrate_mean <- mean(nitcol)
                print(nitrate_mean)
        }
}
