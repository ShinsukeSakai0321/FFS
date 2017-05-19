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

