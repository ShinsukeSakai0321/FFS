\name{DrawR6}
\alias{DrawR6}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Draw R6 daigram
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
DrawR6(Kr = 0.3, Lr = 0.5, Su = 5.9e+08, Sy = 313600000, pch = 16)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Kr}{
%%     ~~Describe \code{Kr} here~~
}
  \item{Lr}{
%%     ~~Describe \code{Lr} here~~
}
  \item{Su}{
%%     ~~Describe \code{Su} here~~
}
  \item{Sy}{
%%     ~~Describe \code{Sy} here~~
}
  \item{pch}{
%%     ~~Describe \code{pch} here~~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (Kr = 0.3, Lr = 0.5, Su = 5.9e+08, Sy = 313600000, pch = 16)
{
    Lrmax = (Su + Sy)/2/Sy
    div <- 1000
    Lmax <- Lrmax
    dL <- Lmax/div
    LL <- seq(0, Lmax, length = div)
    KK <- R6Option1(LL)
    plot(LL, KK, type = "l", xlim = c(0, 1.6), ylim = c(0, 1.2),
        xlab = "Lr", ylab = "Kr")
    par(new = T)
    plot(Lr, Kr, pch = pch, xlim = c(0, 1.6), ylim = c(0, 1.2))
    abline(h = 0, v = 0)
    segments(Lrmax, 0, Lrmax, R6Option1(Lrmax))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
