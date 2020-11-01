corr <- function(directory="specdata", threshold=0){
  #c <- data.frame()
  c <- numeric()
  d<-dir(directory)
  for (di in d) {
    df <- read.csv(file.path(directory,di))
    if (sum(complete.cases(df))>threshold) {
      df <- df[complete.cases(df),]
      c  <- rbind(c, cor(df$sulfate, df$nitrate))
    }
  }
  as.numeric(c)
  }