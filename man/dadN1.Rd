\name{dadN1}
\alias{dadN1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculation of fatigue crack growth for delta-K using JSME-FFS code for low carbon steel and low alloy steel
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
dadN1(R=0.1,n=3.07,dK=17.68)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{R}{stress ratio
%%     ~~Describe \code{x} here~~
}
\item{n}{exponent of delta-K}
\item{dK}{Range of stress intensity factor}
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
Raju_newman command for the calculation of stress intensity factor
}
\examples{
# Kouzou Kenzensei Hyouka Handbook
#Kyouritsu Syuppan P.369 Subject No2.2
k1 <- Raju_Newman()/1e6
k2 <- Raju_Newman(sm=2e7)/1e6
dkA <- k1$KA-k2$KA
dkB <- k1$KB-k2$KB
dadN1(dK=dkA)
dadN1(dK=dkB)
#candidate solution
> dadN1(dK=dkA)
[1] 2.92088e-05
> dadN1(dK=dkB)
[1] 5.459835e-05

# Kouzou Kenzensei Hyouka Handbook
#Kyouritsu Syuppan P.369 Subject No2.3
6+dadN1(dK=dkA)*100
6*2+dadN1(dK=dkB)*2*100
#candidate solution
> 6+dadN1(dK=dkA)*100
[1] 6.002921
> 6*2+dadN1(dK=dkB)*2*100
[1] 12.01092
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
