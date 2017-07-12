\name{PlateR6}
\alias{PlateR6}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
R6 analysis for Surface Cracks in Plates
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
\itemize{
\item{K-solution:  Raju_Newman method}
\item{L-solution:  Dillstrom, P.and Sattari-Far}
}

}
\usage{
PlateR6(E = 1.92e+11, nu = 0.3, Su = 4.9e+08, Sy = 2.7e+08, J1c = 1e+05, a = 0.02, cc = 0.015, b = 0.1, t = 0.04, P = 2e+06, M = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{E}{
%%     ~~Describe \code{E} here~~
}
  \item{nu}{
%%     ~~Describe \code{nu} here~~
}
  \item{Su}{
%%     ~~Describe \code{Su} here~~
}
  \item{Sy}{
%%     ~~Describe \code{Sy} here~~
}
  \item{J1c}{
%%     ~~Describe \code{J1c} here~~
}
  \item{a}{
%%     ~~Describe \code{a} here~~
}
  \item{cc}{
%%     ~~Describe \code{cc} here~~
}
  \item{b}{
%%     ~~Describe \code{b} here~~
}
  \item{t}{
%%     ~~Describe \code{t} here~~
}
  \item{P}{
%%     ~~Describe \code{P} here~~
}
  \item{M}{
%%     ~~Describe \code{M} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Shinsuke Sakai
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#Kouzou Kenzensei Hyouka Handbook
#subject 2.5
a<-0.02; cc<-0.015;
res <- PlateR6(Su = 4.9e+08, Sy = 2.7e+08,a = a, cc = cc, t = 0.04, b = 0.1, P=2.7e6,M=0)
cat("Kr=",res[1],",Lr=",res[2])
cat("Safety Margin=",SafetyMargin(Kr=res[1],Lr=res[2]))
DrawR6(res[1],res[2],Su = 4.9e+08, Sy = 2.7e+08)
# solution
#Kr= 0.3266297 ,Lr= 0.9459494

#subject 2.6
a<-0.02; cc<-0.015;
for(i in 1:300000){
  Kmax<-Raju_Newman(a = a, cc = cc, t = 0.04, b = 0.1, P=8e5,M=0)
  da<-dadN1(R=0.0,dK=Kmax$KA/1e6)/1e3
  dc<-dadN1(R=0.0,dK=Kmax$KB/1e6)/1e3
  a<-a+da
  cc<-cc+dc
  #cat(i,"a=",a,"2c=",cc*2,"\n")
}
cat("a=",a,"2c=",cc*2)
#expected solution
#a= 0.03044039 2c= 0.07068406
res<-PlateR6(Su = 4.9e+08, Sy = 2.7e+08, a = a, cc = cc,  t = 0.04, b = 0.1, P=2.7e6, M = 0)
DrawR6(Kr=res[1],Lr=res[2],Su = 4.9e+08, Sy = 2.7e+08)
cat("Safety Margin=",SafetyMargin(Kr=res[1],Lr=res[2]))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
