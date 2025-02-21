#Explore S3
test1S3 <- list(x1 <- c(77, 9, 13, 24), x2 <- c("jim", "john", "jason", "james"), x3 <- c(T,F,F,T))

test2S3 <- list(y1 <- c('gavin','gary','gill','grace'), y2 <- c(F,F,T,T), y3 <- c('green','blue','red','yellow'))

class(test1S3)
test1S3$x1

class(test2S3)
test2S3$y2
  

#Explore S4
setClass("subject",representation(z1='numeric', z2='character', z3='logical'))

test1S4 <- new("subject", z1 = c(92, 12, 5, 11), z2 = c("aaron","adam","alex","alonso"), z3 = c(F,T,T,T))

class(test1S4)
test1S4@z2


setClass("member", representation(z1='character',z2='numeric',z3='numeric'))

test2S4 <- new("member", z1 = c("katie","kasey","kat","kevin"), z2 = c(13,22,7,9), z3 = c(300,450,275,400))

class(test2S4)
test2S4@z3








