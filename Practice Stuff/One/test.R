f1 <- character()
f2 <- character()
f3 <- character()
#pollutantmean <- function(dir,ptant,id=1:332, removeNA=TRUE) {
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
print(files)