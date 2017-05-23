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

ZahoorPipe <- function(Rm=0.06,t=0.01,th=pi/6,M=1.96e4,Su=490e6,Sy=313.6e6){
  #L-2-k
  Mc<- 4*Sy*Rm*Rm*t*(cos(th/2)-0.5*sin(th))
  M/Mc
}

KumarPipe <- function(Ro=291e-3,Ri=275e-3,p=8e6,a=11e-3,Su=618e6,Sy=514e6){
  t<-Ro-Ri
  zeta<-a/t
  sf<-(Su+Sy)/2
  po<-2/sqrt(3)*sf*t/Ri
  pc<-po*((1-zeta)/(1+zeta/(Ri/t)))
  p/pc
}
