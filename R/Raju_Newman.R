Raju_Newman <- function(a=0.006,cc=0.006,t=0.01,b=0.025,
                        P=0.1e6,M=0.0){
  sm <- P/(b*2*t)
  sb <- 3*M/(b*t*t)
  Q <- 1+1.464*(a/cc)^1.65
  g<-1; fp<-1
  fw <- sqrt(1.0/cos(pi*cc/(2*b)*sqrt(a/t)))
  FA <- (1.13-0.09*a/cc+(-0.54+0.89/(0.2+a/cc))*(a/t)^2+(0.5-1/(0.65+a/cc)+14*(1-a/cc)^24.0)*(a/t)^4)*g*fp*fw
  H <- 1+(-1.22-0.12*a/cc)*a/t+(0.55-1.05*(a/cc)^0.75+0.47*(a/cc)^1.5)*(a/t)^2
  KA <- FA*(sm+H*sb)*sqrt(pi*a/Q)
  g <- 1.1+0.35*(a/t)^2
  fp <- sqrt(a/cc)
  FB <- (1.13-0.09*a/cc+(-0.54+0.89/(0.2+a/cc))*(a/t)^2+(0.5-1/(0.65+a/cc)+14*(1-a/cc)^24)*(a/t)^4)*g*fp*fw
  H <- 1-0.34*a/t-0.11*(a/cc)*(a/t)
  KB <- FB*(sm+H*sb)*sqrt(pi*a/Q)
  data.frame(KA=KA,KB=KB)
}

ASME_N_513<- function(Rm=0.06,t=0.01,th=pi/6,M=1.96e4){
  #K-2-k-2
  aa<-Rm/t
  Abg<- -3.6543+1.52784*aa-0.072098*aa^2+0.0016011*aa^3
  Bbg<- 11.36322-3.91412*aa+0.18619*aa^2-0.004099*aa^3
  Cbg<- -3.18609+3.84763*aa-0.18304*aa^2+0.00403*aa^3
  tt <- th/pi
  Fbg <- 1+Abg*tt^1.5+Bbg*tt^2.5+Cbg*tt^3.5
  M/(pi*Rm*Rm*t)*sqrt(pi*Rm*th)*Fbg
}
ZahoorK2b2<-function(Ro=291e-3,Ri=275e-3,p=8e6,a=11e-3){
  #K-2-b-2
  t<-Ro-Ri
  sm<-2*Ro*Ro*p/(Ro*Ro-Ri*Ri)
  rr<-a/t
  A<-0.0
  if(Ri/t<=10 && Ri/t>=5){
    A<-(0.125*(Ri/t)-0.25)^0.25
  }
  if(Ri/t<=20 && Ri/t>=10){
    A<-(0.2*(Ri/t)-1)^0.25
  }
  FF<-1.1+A*(4.951*rr*rr+1.092*rr*rr*rr*rr)
  FF*sm*sqrt(pi*a)
}

