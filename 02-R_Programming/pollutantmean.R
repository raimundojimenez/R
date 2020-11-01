pollutantmean <- function(directory, pollutant, id=1:332){
  s <- 0
  c <- 0
  d<-dir(directory)[id]
  for (di in d) {
    df <- read.csv(file.path(directory,di))
    s <- s + sum(df[[pollutant]][!is.na(df[[pollutant]])])
    c <- c + length(df[[pollutant]][!is.na(df[[pollutant]])])
  }
  s / c
}