\name{geom_float}
\alias{geom_float}
\alias{geom_floatbar}
\alias{stat_diff}
\title{Floating bar charts}
\description{
In geom_float,
}
\usage{
geom_float(mapping = NULL, data = NULL, stat = "identity", position =   "identity", ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)

geom_floatbar(mapping = NULL, data = NULL, stat="diff", position = "identity", ..., alpha=0.5, width = NULL, na.rm = FALSE, show.legend = NA,nherit.aes = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mapping}{
Set of aesthetic mappings created by aes() or aes_(). If specified and inherit.aes = TRUE (the default), it is combined with the default mapping at the top level of the plot. You must supply mapping if there is no plot mapping.
}
  \item{data}{
The data to be displayed in this layer.
}
  \item{stat}{
%%     ~~Describe \code{stat} here~~
}
  \item{position}{
%%     ~~Describe \code{position} here~~
}
  \item{\dots}{
Other arguments passed on to layer(). These are often aesthetics, used to set an aesthetic to a fixed value, like colour = "red" or size = 3. They may also be parameters to the paired geom/stat.
}
  \item{na.rm}{
If FALSE, the default, missing values are removed with a warning. If TRUE, missing values are silently removed.
}
  \item{show.legend}{
logical. Should this layer be included in the legends? NA, the default, includes if any aesthetics are mapped. FALSE never includes, and TRUE always includes. It can also be a named logical vector to finely select the aesthetics to display.
}
  \item{inherit.aes}{
If FALSE, overrides the default aesthetics, rather than combining with them. This is most useful for helper functions that define both data and aesthetics and shouldn't inherit behaviour from the default plot specification, e.g. borders().
}
}
\section{Aesthetics}{
\code{geom_float()} understands the following aesthetics (required aesthetics are in bold):
\itemize{
\item \strong{\code{x}}
\item \strong{\code{y}}
\item \code{alpha}
\item \code{colour}
\item \code{fill}
\item \code{group}
\item \code{linetype}
\item \code{stroke}
}
Learn more about setting these aesthetics in \code{vignette("ggplot2-specs")}.
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

ggplot(sleep,aes(x=ID,y=extra,colour=group))+
  geom_float()

ggplot(sleep,aes(x=ID,y=extra))+
  geom_floatbar()+
  geom_float(aes(colour=group))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
