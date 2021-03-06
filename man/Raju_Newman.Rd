\name{Raju_Newman}
\alias{Raju_Newman}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Calculation of Stress Intensity Factor by Raju-Newman method
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Raju_Newman(a = 0.006, cc = 0.006, t = 0.01, b = 0.025, P=0.1e6,M=0.0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{crack depth
%%     ~~Describe \code{a} here~~
}
  \item{cc}{half crack width
%%     ~~Describe \code{cc} here~~
}
  \item{t}{thickness of plate
%%     ~~Describe \code{t} here~~
}
  \item{b}{half width of plate
%%     ~~Describe \code{b} here~~
}
  \item{P}{Applied load
%%     ~~Describe \code{sm} here~~
}
  \item{M}{Applied bending moment
%%     ~~Describe \code{sb} here~~
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
# Kouzou Kenzensei Hyouka Handbook
#Kyouritsu Syuppan P.369 Subject No.2.1
k1 <- Raju_Newman()/1e6
t<-0.01;b<-0.025
P<-2e7*2*b*t
k2 <- Raju_Newman(P=P)/1e6
dkA <- k1$KA-k2$KA
dkB <- k1$KB-k2$KB
c(dkA,dkB)
#correct answer
#[1] 17.67812 21.67337
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
