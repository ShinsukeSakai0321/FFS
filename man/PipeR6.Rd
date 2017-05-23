\name{PipeR6}
\alias{PipeR6}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
R6 analysis for Surface Cracks in Plates
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
\itemize{
\item {K-solution:  ASME CODE case N513:}
\item {L-solution:  Zahoor's solution}
}
}
\usage{
PipeR6(E = 1.9208e+11, nu = 0.3, Su = 4.9e+08, Sy = 313600000, J1c = 784000, Rm = 0.06, t = 0.01, th = pi/6, M = 19600)
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
  \item{Rm}{
%%     ~~Describe \code{Rm} here~~
}
  \item{t}{
%%     ~~Describe \code{t} here~~
}
  \item{th}{
%%     ~~Describe \code{th} here~~
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
\itemize{
\item {K(K-2-k-2): ASME Boiler and Pressure Vessel Code, Code Case N-513, Evaluation Criteria for Temporary Acceptance of Flaws in Class 3 Pipint,1997}
\item{L(L-2-k):Zahoor A.,Final Report on EPRI Project, T118-9-1,December 1982}
}
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
# subject 4.3
# case 1
aa <- PipeR6()
DrawR6(aa[1],aa[2])
# case 2
aa<-PipeR6(E = 1.9208e+11, nu = 0.3, Su = 4.9e+08, Sy = 313600000, J1c = 784000, Rm = 0.2, t = 0.016, th = pi/6, M = 7.84e5)
DrawR6(aa[1],aa[2])
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
