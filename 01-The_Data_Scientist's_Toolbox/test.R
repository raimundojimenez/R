mean(mtcars$mpg)
example <- matrix(c(1,2,3,4,5,6,7,8),nrow=4, ncol=2)
example
View(example)

print("This file was created within RStudio")
print ("And now it lives on GitHub")
print("Raimundo Jiménez")
x <- 1
print(x)
x
msg <- "hello"
x <- 1:20
x
x <- 1:200
x
c(1.7, "a")
c(T, 2)
c("a", T)
x<-0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
class(as.numeric(x))
x<-c("a", "b", "c")
as.numeric(x)
x<-list(1, "a", TRUE, 1+4i)
x
m<-matrix(nrow=2, ncol=3)
m
dim(m)
attributes(m)
m<-matrix(1:6, nrow=2, ncol=3)
m
m<-1:10
m
dim(m)<-c(2,5)
m
x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)
x<-factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)
x<-factor(c("yes", "yes", "no", "yes", "no"), levels=c("yes", "no"))
x
is.na(x)
is.nan(y)
x<-c(1,2,NA,4,5)
is.na(x)
is.nan(x)
x<-c(1,2,NaN, na, 5)
x<-c(1,2,NaN, NA, 5)
is.na(x)
x<-c(1,2,NaN, NA, 5)
is.na(x)
is.nan(x)
# Comentario
# read.table()
# read.csv()
# data.matrix()
# row.names
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)
x <- 1:3
names(x)
names(x)<-c("foo", "bar", "norf")
x
names(x)
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
attributes(m)
c(4, T)
class(c(4, T))
1:4
1:4 + 2:3
library(readr)
hw1_data <- read_csv("02-R_Programming/quiz1_data/hw1_data.csv")
View(hw1_data)
x<-hw1_data
head(x)
head(x,n = 2)
dim(x)
tail(x,n = 2)
x[47,1]
is.na(x[1,])
is.na(x[,1])
dim(x[is.na(x[,1]),1])
dim(x[1,][is.na(x[,1])])
dim(x[,1][is.na(x[,1])])
dim(x[,1][is.na(x[,1])])
x[,1]
x[,1][1]
is.na(x[,1])==T
x[is.na(x[,1])]
x[is.na(x[[,1]])]
is.na(x[[,1]])
dim(x[is.na(x[,1]),1])
attributes(x)
x$Ozone
x$Ozone[!is.na(x$Ozone)]
t <- x$Ozone[!is.na(x$Ozone)]
t
mean(t)
x$Ozone>31
x$Temp>90
good <- complete.cases(x$Ozone>31, x$Temp>90)
good
T & F
T & T
x$Ozone>31 & x$Temp>90
mean(x$Solar.R[x$Ozone>31 & x$Temp>90])
x$Solar.R[!is.na(x$Ozone>31 & x$Temp>90)]
mean(x$Solar.R[!is.na(x$Ozone>31 & x$Temp>90)])
mean(x$Solar.R[!is.na(x$Solar.R[!is.na(x$Ozone>31 & x$Temp>90)])])
x$Solar.R[!is.na(x$Solar.R[!is.na(x$Ozone>31 & x$Temp>90)])]
x[!is.na(x$Ozone>31 & x$Temp>90)]
x[!is.na(x$Ozone>31 & x$Temp>90),]
x[x$Ozone>31 & x$Temp>90,]
x[x$Ozone>31 & x$Temp>90,][!is.na(x$Ozone,)]
x[x$Ozone>31 & x$Temp>90,][!is.na(x$Ozone),]
x[!is.na(x[x$Ozone>31 & x$Temp>90,]$Ozone),]
x$Temp[x$Month==6,]
x$Temp[x$Month==6]
mean(x$Temp[x$Month==6])
max(x$Ozone[x$Month==5])
help("max")
max(x$Ozone[x$Month==5], na.rm = T)
x[x$Ozone>31 & x$Temp>90,]
x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),]
mean(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),]["Solar.R"])
mean(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"])
x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"]
help("mean")
mean(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"])
mean(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][[,"Solar.R"]])
mean(as.numeric(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"]))
as.numeric(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"])
x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"]
t<-x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][,"Solar.R"]
t
as.numeric(t)
t[[,1]]
t[,1]
t[["Solar.R"]]
t<-x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][[,"Solar.R"]]
t<-x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][["Solar.R"]]
mean(x[x$Ozone>31 & x$Temp>90 & !is.na(x$Ozone),][["Solar.R"]])
class(c(4, "a", TRUE))
install.packages("swirl")
packageVersion("swirl")
library(swirl)
savehistory("/zfspool/nextcloud/Vault/Programación/R/02-R_Programming/history20201031.Rhistory")
rm(list=ls())
library(swirl)
install_from_swirl("R Programming")
swirl()
5+7
quit()
swirl()
library(swirl)
swirl()
x <- 5+7
x
y<-x-3
y
z<-c(1.1.9.3.14)
z<-c(1.1,9,3.14)
?c
z
c(z, 555, z)
z*2+100
my_sqrt<-sqrt(z-1)
my_sqrt
my_div <- z/my_sqrt
my_div
c(1:4)+c(0,10)
c(1,2,3,4)+c(0,10)
c(1,2,3,4)+c(0,10,100)
z*2+1000
my_div
getwd()
ls()
x<-9
ls()
dir()
?list.files
args(list.files)
old.dir <- getwd()
dir.create("testdir")
setwd(testdir)
setwd("testdir")
file.create("mytest.R")
dir()
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R", "mytest3.R")
file.path("mytest3.R")
file.path("folder1", "folder2")
?dir.create
dir.create(file.path("testdir2", "testdir3"), recursive=TRUE)
setwd(old.dir)
play()
list.files()
file.remove("testdir")
?file.remove
file.remove("testdir",recursive=T)
!ls
unlink("testdir",recursive=TRUE)
dir()
nxt()
1:20
pi:10
15:1
?':'
seq(1:20)
seq(1,20)
seq(0,10,by=0.5)
my_seq<-seq(5,10,length=30)
length(my_seq)
1:length(my_seq)
seq(along.with=my_seq)
seq_along(my_seq)
rep(0, times=40)
rep(c(0,1,2),times=10)
rep(c(0,1,2),each=10)
num_vect <- c(0.5,55,-10,6)
tf<-num_vect<1
tf
num_vect>=6
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse=" ")
my_name <- c(my_char, "Raimundo Jimenez")
my_name
paste(my_name, collapse = " ")
paste("Hello", "world!", sep=" ")
paste(1:3, c("X","Y","Z"), sep="")
paste(LETTERS, 1:4, sep="-")
x<-c(44,NA,5,NA)
x*3
y<-rnorm(1000)
z<-rep(NA,1000)
my_data<-sample(c(y,z),100)
my_na<-is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf-Inf
x
x[1:10]
x[is.na(x)]
y<-x[!is.na(x)]
y
y[y>0]
x[x>0]
x[!is.na(x) & x > 0]
x[c(3,5,7)]
x[0]
x[3000]
x[c(-2,-10)]
x[-c(2,10)]
vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11,2,NA)
names(vect2)<-c("foo", "bar", "norf")
identical(vect, vect2)
vect["bar"]
vect[c("foo", "bar")]
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector)<-c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix<-my_vector
?matrix
my_matrix2<-matrix(1:20,nrow=4,ncol=5)
identical(my_matrix,my_matrix2)
patients<-c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data<-data.frame(patients,my_matrix)
my_data
class(my_data)
cnames<-c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data)<-cnames
my_data
TRUE == TRUE
(FALSE==TRUE)==FALSE
6==7
6<7
10<=10
5!=7
!(5==7)
FALSE & FALSE
TRUE & C(TRUE, FALSE, FALSE)
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
isTRUE(6>4)
identical('twins', 'twins')
xor(5==6,!FALSE)
ints<-sample(10)
ints
ints>5
which(ints>7)
any(ints<0)
all(ints>0)
Sys.Date()
mean(c(2,4,5))
submit()
boring_function('My first function!')
boring_function
submit()
my_mean(c(4,5,10))
submit()
remainder(5)
remainder(11,5)
remainder(divisor = 11, num = 5)
remainder(4,div=2)
args(remainder)
submit()
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]},c(8, 4, 0))
evaluate(function(x){x[length(x)]},c(8, 4, 0))
?paste
paste("Programming", "is", "fun!")
submit()
telegram("Hola")
submit()
mad_libs(place="Jerez", adjective="brillante", noun="estudiantes")
source('/tmp/Rtmp6xhxNS/bin_op.R')
submit()
'I' %p% 'love' %p% 'R!'
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2<.as.Date("1969-01-01")
d2<-as.Date("1969-01-01")
unclass(d2)
t1<-Sys.time()
t1
class(t1)
unclass(t1)
t2<-as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2)
str(unclass(t2))
t2$min
weekdays(d1)
months(t1)
quarters(t2)
t3<-"October 17, 1986 08:24"
t4<-strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')
cube <- function(x, n) {
x^3
}
cube(3)
