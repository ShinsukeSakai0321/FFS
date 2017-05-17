#JSME FFS-CODE for low carbon steel and low alloy steel
dadN1 <- function(R=0.1,n=3.07,dK=17.68){
  S <- 25.72*(2.88-R)^{-n}
  cc <- 3.88*1e-9*S
  cc*dK^n
}
