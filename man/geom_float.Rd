\name{geom_float}
\alias{geom_float}
\alias{geom_floatbar}
\alias{GeomFloat}
\alias{GeomFloatbar}
\title{Floating bar charts}
\description{
\code{geom_float} draws a horizontal line placed at the corresponding value. It can be used to compare one continuous and one categorical variable.

\code{geom_floatbar} fills in the differences between multiple variables.
}
\usage{
geom_float(mapping = NULL,
  data = NULL,
  stat = "identity",
  position =   "identity",
  ...,
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE)

geom_floatbar(mapping = NULL,
  data = NULL,
  stat = "diff",
  position = "identity",
  ...,
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mapping}{
Set of aesthetic mappings created by \code{aes()} or \code{aes_()}. If specified and \code{inherit.aes = TRUE} (the default), it is combined with the default mapping at the top level of the plot. You must supply mapping if there is no plot mapping.
}
  \item{data}{
  The data to be displayed in this layer.
}
  \item{stat}{
  Use to override the default connection between \code{geom_floatbar()} and \code{stat_diff()}.
}
  \item{position}{
  Position adjustment, either as a string, or the result of a call to a position adjustment function.
}
  \item{\dots}{
  Other arguments passed on to \code{layer()}. These are often aesthetics, used to set an aesthetic to a fixed value, like \code{colour = "red"} or \code{size = 3}. They may also be parameters to the paired geom/stat.
}
%  \item{alpha}{}
%  \item{width}{}
  \item{na.rm}{
  If FALSE, the default, missing values are removed with a warning. If TRUE, missing values are silently removed.
}
  \item{show.legend}{
logical. Should this layer be included in the legends? NA, the default, includes if any aesthetics are mapped. FALSE never includes, and TRUE always includes. It can also be a named logical vector to finely select the aesthetics to display.
}
  \item{inherit.aes}{
If FALSE, overrides the default aesthetics, rather than combining with them. This is most useful for helper functions that define both data and aesthetics and shouldn't inherit behaviour from the default plot specification, e.g. \code{borders()}.
}
}
\section{Aesthetics}{
\code{geom_float()} and \code{geom_floatbar()} understand the following aesthetics (required aesthetics are in bold):
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

ggplot(sleep, aes(x=ID, y=extra, colour=group))+
  geom_float()

ggplot(sleep, aes(x=ID, y=extra, colour=group))+
     geom_floatbar()+
     geom_float()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
