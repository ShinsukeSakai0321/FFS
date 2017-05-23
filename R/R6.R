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
PipeR6 <- function(E=192.08e9,nu=0.3,Su=490e6,Sy=313.6e6,J1c=0.784e6,
                   Rm=0.06,t=0.01,th=pi/6,M=1.96e4){
  K1c <- sqrt(E*J1c/(1-nu*nu))
  K1<-ASME_N_513(Rm=Rm,t=t,th=th,M=M)
  Kr<-K1/K1c
  Lr <- ZahoorPipe(Rm=Rm,t=t,th=th,M=M,Su=Su,Sy=Sy)
  c(Kr,Lr)
}
PipeLCrackR6<-function(Ro=291e-3,Ri=275e-3,p=8e6,a=11e-3,Su=618e6,Sy=514e6,K1c=119e6){
  Kr<-ZahoorK2b2(Ro=Ro,Ri=Ri,p=p,a=a)/K1c
  Lr<-KumarPipe(Ro=Ro,Ri=Ri,p=p,a=a,Su=Su,Sy=Sy)
  c(Kr,Lr)
}
DrawR6 <- function(Kr=0.3,Lr=0.5,Su=590e6,Sy=313.6e6){
  Lrmax=(Su+Sy)/2/Sy
  div <- 1000
  Lmax <- Lrmax
  dL <- Lmax/div
  LL <- seq(0,Lmax,length=div)
  KK<-R6Option1(LL)
  plot(LL,KK,type="l",xlim=c(0.0,1.6),ylim=c(0.0,1.2),xlab="Lr",ylab="Kr")
  par(new=T)
  plot(Lr,Kr,pch=16,xlim=c(0.0,1.6),ylim=c(0.0,1.2))
  abline(h=0,v=0)
  segments(Lrmax,0,Lrmax,R6Option1(Lrmax))
}
R6Option1<-function(Lr){
  Kr<-(1-0.14*Lr*Lr)*(0.3+0.7*exp(-0.65*Lr^6))
  Kr
}
SafetyMargin<-function(Kr=0.3,Lr=0.5){
  f<-function(x){
    R6Option1(x)-Kr*x/Lr
  }
  aa<-uniroot(f, c(0, 1.6))
  aa$root/Lr
}
