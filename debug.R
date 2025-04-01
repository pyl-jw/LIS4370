
set.seed(1045)
data <- data.frame(group = rep(c("P1", "P2", "P3"), each = 40),
                   values = c(rnorm(40, 0, 3),rnorm (40, 0, 6),rnorm (40, 1, 5)))
head(data)




tukey_multiple <- function(x) {
  
  outliers <- array(TRUE,dim=dim(x))
  
  for (j in 1:ncol(x)){
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  
  outlier.vec <- vector(length=nrow(x))
  
  for (i in 1:nrow(x)){ 
    outlier.vec[i] <- all(outliers[i,]) 
  } 
  
  return(outlier.vec) 
}


#_______________________________#


##FIXED###

tukey_multiple.db <- function(x) {
  
  outliers <- array(TRUE,dim=dim(x))
  
  for (j in 1:ncol(x)){
    outliers[,j] <- outliers[,j] & tukey.outlier(x[,j])
  }
  
  outlier.vec <- vector(length=nrow(x))
  
  for (i in 1:nrow(x)){ 
    outlier.vec[i] <- all(outliers[i,]) 
  } 
  
  return(outlier.vec) 
}



tukey_multiple(test) #error