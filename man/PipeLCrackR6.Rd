\name{PipeLCrackR6}
\alias{PipeLCrackR6}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
R6 analysis for Surface Cracks in Pipe
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
\itemize{
\item{K-solution:  ZahoorK2b2(K-2-b-2)}
\item{L-solution:  KumarPipe(L-2-b)}
}
}
\usage{
PipeLCrackR6(Ro = 0.291, Ri = 0.275, p = 8e+06, a = 0.011, Su = 6.18e+08, Sy = 5.14e+08, K1c = 1.19e+08)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Ro}{
%%     ~~Describe \code{Ro} here~~
}
  \item{Ri}{
%%     ~~Describe \code{Ri} here~~
}
  \item{p}{
%%     ~~Describe \code{p} here~~
}
  \item{a}{
%%     ~~Describe \code{a} here~~
}
  \item{Su}{
%%     ~~Describe \code{Su} here~~
}
  \item{Sy}{
%%     ~~Describe \code{Sy} here~~
}
  \item{K1c}{
%%     ~~Describe \code{K1c} here~~
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
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#section 4.5 example
Su<-618e6
Sy<-514e6
#posision a
k1c<-RolfeBarsom(Cv=47.5)
res1<-PipeLCrackR6(K1c=k1c)
DrawR6(Kr=res1[1],Lr=res1[2],Su=Su,Sy=Sy,pch=0); par(new=T)
#posision b
k1c<-RolfeBarsom(Cv=52.0)
res1<-PipeLCrackR6(K1c=k1c)
DrawR6(Kr=res1[1],Lr=res1[2],Su=Su,Sy=Sy,pch=1); par(new=T)
#posision c
k1c<-RolfeBarsom(Cv=66.1)
res1<-PipeLCrackR6(K1c=k1c)
DrawR6(Kr=res1[1],Lr=res1[2],Su=Su,Sy=Sy,pch=2); par(new=T)
#posision a
k1c<-RolfeBarsom(Cv=70.0)
res1<-PipeLCrackR6(K1c=k1c)
DrawR6(Kr=res1[1],Lr=res1[2],Su=Su,Sy=Sy,pch=3); par(new=T)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
