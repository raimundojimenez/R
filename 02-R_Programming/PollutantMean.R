# Creación de los nombres de los ficheros : 001.csv, 002.csv, ..., 300.csv
# paste(gsub(" ", "0", format(1, width=3)), ".csv", sep="")
# See ?regexp or gsub for more help
#

# Creación de una segunda columna en un data.frame
#
R> ## also adds missing ')' and sets column name
R> group<-data.frame(group=c("12357e", "12575e", "197e18", "e18947"))  )
R> group
   group
1 12357e
2 12575e
3 197e18
4 e18947

Now use gsub() with the simplest possible replacement pattern: empty string:

R> group$groupNoE <- gsub("e", "", group$group)
R> group
   group groupNoE
1 12357e    12357
2 12575e    12575
3 197e18    19718
4 e18947    18947
R> 
#
#
#
