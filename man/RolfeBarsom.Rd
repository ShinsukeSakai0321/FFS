\name{RolfeBarsom}
\alias{RolfeBarsom}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Evaluation of fracture toughness from sharpy absorption energy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
RolfeBarsom(Cv = 47.5, Sy = 5.14e+08)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Cv}{Sharpy absorption energy
%%     ~~Describe \code{Cv} here~~
}
  \item{Sy}{Yeild strength
%%     ~~Describe \code{Sy} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
In case you do not have the fracture toughness value of a material, you can roughly evaluate it from this command. It is said, this method gives safer side evaluation.
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
function (Cv = 47.5, Sy = 5.14e+08)
{
    k1c <- sqrt(0.6478 * (Cv * 1e+06/Sy - 0.0098)) * Sy
    return(k1c)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
