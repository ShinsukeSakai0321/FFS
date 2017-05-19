Dillstrom <- function(a=0.02,cc=0.015,b=0.1,t=0.04,
                      P=2000e3,M=0.0,Su=490e6,Sy=270e6){
  sm <- P/(b*2*t)
  sb <- 3*M/(b*t*t)
  sf <- (Su+Sy)/2
  l<-2*cc
  zeta <- a*l/(t*(l+2*t))
  c1 <- (1-zeta)^2*sf
  cu <- (1-zeta)^1.58*sb/3+sqrt((1-zeta)^3.16*sb*sb/9+(1-zeta)^3.14*sm*sm)
  cu/c1
}
