\name{PlateR6}
\alias{PlateR6}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
R6 analysis for Surface Cracks in Plates
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
K-solution:  Raju_Newman method
L-solution:  Dillstrom, P.and Sattari-Far
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
cc <- PlateR6()
cc
DrawR6(cc[1],cc[2])
# solution
[1] 0.2419479 0.7007032
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
