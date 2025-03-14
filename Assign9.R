library(ggplot2)
library(tidyr)

#data cleaning
data <- read.csv("Tbrate.csv")
data <- data[,-1]
colnames(data) <- c("InterestRate", "GDP", "Inflation")

#scatter plot
ggplot(data, aes(x=GDP,y=InterestRate)) + geom_point(aes(col=Inflation))

#bar chart
data_long <- data %>% gather(key = "var", value = "value")

ggplot(data_long, aes(x=var, y=value)) + geom_bar(stat = "identity")

#boxplot
par(mfrow=c(1,3))

hist(data$InterestRate)
hist(data$GDP)
hist(data$Inflation)
