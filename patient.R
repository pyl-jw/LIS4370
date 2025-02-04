patients <- data.frame(freq,bloodp,first,second,finaldecision)

boxplot(bloodp ~ second,patients, xlab="External Assessment", ylab="Blood Pressure",xaxt="n")
axis(1, at = c(1,2), labels = c("Low","High"))

hist(patients$bloodp,xlab="Blood Pressure",main="")




