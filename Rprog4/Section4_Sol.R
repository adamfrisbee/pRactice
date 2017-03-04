#Section 4 Homework Solution
#Adam Frisbee


myplot <- function(data, rows=1:10){
  data <- data[rows,,drop=F]
  matplot(t(data), type="b", pch=15:25, col=c(1:10))
  legend("bottomleft", legend=Players[rows], col=c(1:10), pch=15:25)
  
  
}