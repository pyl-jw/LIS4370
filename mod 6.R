#Q1
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

A
B

A+B
A-B

#Q2
diag(C <- c(4,1,2,3))

#Q3
D <- diag(rep(3, 5))
D[1,2:5] <- 1
D[2:5,1] <- 1

D
