\name{geom_float}
\alias{geom_float}
\alias{geom_floatbar}
\alias{stat_diff}
\title{Floating bar charts}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
geom_float(mapping = NULL, data = NULL, stat = "identity", position =   "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)

geom_floatbar(mapping = NULL, data = NULL, stat="diff", position = "identity", ..., alpha=0.5, width = NULL, na.rm = FALSE, show.legend = NA,nherit.aes = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mapping}{
%%     ~~Describe \code{mapping} here~~
}
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{stat}{
%%     ~~Describe \code{stat} here~~
}
  \item{position}{
%%     ~~Describe \code{position} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
  \item{na.rm}{
%%     ~~Describe \code{na.rm} here~~
}
  \item{show.legend}{
%%     ~~Describe \code{show.legend} here~~
}
  \item{inherit.aes}{
%%     ~~Describe \code{inherit.aes} here~~
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
Ko ABE
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

library(ggplot2)

ggplot(sleep,aes(x=ID,y=extra,colour=group))+
  geom_float()

ggplot(sleep,aes(x=ID,y=extra))+
  geom_floatbar()+
  geom_float(aes(colour=group))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
