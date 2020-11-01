complete <- function(directory="specdata", id=1:332){
  #c <- data.frame()
  c <- numeric()
  n <- 1
  d<-dir(directory)[id]
  for (di in d) {
    df <- read.csv(file.path(directory,di))
    c  <- rbind(c, c(n, sum(complete.cases(df))))
    n  <- n+1
  }
  odf <- as.data.frame(c,col.names=c("id","nobs"))
  colnames(odf)<-c("id","nobs")
  odf
}