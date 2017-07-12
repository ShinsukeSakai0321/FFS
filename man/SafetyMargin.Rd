\name{SafetyMargin}
\alias{SafetyMargin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Evaluation of safety margin form the given (Kr,Lr) point
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
After drawing a line from origin to the evaluation point and extrapolating to the R6 flaw curve, the cross point is calculated using Newton-Raphson method. From the cross point and the evaluation point,
}
\usage{
SafetyMargin(Kr = 0.3, Lr = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Kr}{
%%     ~~Describe \code{Kr} here~~
}
  \item{Lr}{
%%     ~~Describe \code{Lr} here~~
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
function (Kr = 0.3, Lr = 0.5)
{
    f <- function(x) {
        R6Option1(x) - Kr * x/Lr
    }
    aa <- uniroot(f, c(0, 1.6))
    aa$root/Lr
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
