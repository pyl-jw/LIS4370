library(pryr); library(plyr)

#1
x <- read.csv("Assignment 6 Dataset.txt", header = TRUE)

df <- ddply(x,"Sex",transform,Grade.Average=mean(Grade))

df.out <- write.table(df,"test.csv")

#2
i_students <- subset(x, grepl("i", x$Name, ignore.case=T))
row.names(i_students) <- NULL #Reindex

#3

dfi.out <- write.table(i_students, "test1.csv")
