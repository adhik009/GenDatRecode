\name{F2.het.recode}
\alias{F2.het.recode}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
function to recode heterozygote calls in linkage mapping studies
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
F2.het.recode(gendat.mat, missing.data.recode, P1.call, P2.call, Het.call)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gendat.mat}{
%%     ~~Describe \code{gendat.mat} here~~
}
  \item{missing.data.recode}{
%%     ~~Describe \code{missing.data.recode} here~~
}
  \item{P1.call}{
%%     ~~Describe \code{P1.call} here~~
}
  \item{P2.call}{
%%     ~~Describe \code{P2.call} here~~
}
  \item{Het.call}{
%%     ~~Describe \code{Het.call} here~~
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
function (gendat.mat, missing.data.recode, P1.call, P2.call,
    Het.call)
{
    for (i in 1:nrow(gendat.mat)) {
        for (j in 4:ncol(gendat.mat)) {
            if (gendat.mat[i, j] != missing.data.recode && gendat.mat[i,
                j] != P1.call && gendat.mat[i, j] != P2.call) {
                gendat.mat[i, j] <- Het.call
            }
        }
    }
    return(gendat.mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
