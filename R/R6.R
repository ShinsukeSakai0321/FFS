PlateR6 <- function(E=192e9,nu=0.3,Su=490e6,Sy=270e6,J1c=0.1e6,
                    a=0.02,cc=0.015,b=0.1,t=0.04,
                    P=2000e3,M=0.0){
  K1c <- sqrt(E*J1c/(1-nu*nu))
  K1<-Raju_Newman(a=a,cc=cc,t=t,b=b,
                  P=P,M=M)
  Kr<-K1$KA/K1c
  Lr<-Dillstrom(a=a,cc=cc,b=b,t=t, P=P,M=M,Su=Su,Sy=Sy)
  c(Kr,Lr)
}
DrawR6 <- function(Kr,Lr){
  div <- 1000
  Lmax <- 1.6
  dL <- Lmax/div
  LL <- seq(0,Lmax,length=div)
  KK <- (1-0.14*LL*LL)*(0.3+0.7*exp(-0.65*LL^6))
  plot(LL,KK,type="l",xlim=c(0.0,1.6),ylim=c(0.0,1.2),xlab="Lr",ylab="Kr")
  par(new=T)
  plot(Lr,Kr,pch=16,xlim=c(0.0,1.6),ylim=c(0.0,1.2))
  abline(h=0,v=0)
}
