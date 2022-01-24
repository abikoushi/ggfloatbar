\name{stat_diff}
\alias{stat_diff}
\alias{StatDiff}
\title{
Take diff.
}
\description{
Shift one row after sort the data.
}
\usage{
stat_diff(mapping = NULL,
  data = NULL,
  geom = "floatbar",
  position = "identity",
  ...,
  na.rm = FALSE,
  orientation = NA,
  show.legend = NA,
  inherit.aes = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mapping}{
The aesthetic mapping, usually constructed with aes or aes_string. Only needs to be set at the layer level if you are overriding the plot defaults.
}
  \item{data}{
A layer specific dataset - only needed if you want to override the plot defaults.
}
  \item{geom}{
The geometric object to use display the data
}
  \item{position}{
The position adjustment to use for overlappling points on this layer
}
  \item{\dots}{
other arguments passed on to layer. This can include aesthetics whose values you want to set, not map. See layer for more details.
}

  \item{na.rm}{
  If FALSE, the default, missing values are removed with a warning. If TRUE, missing values are silently removed.
}
  \item{orientation}{
  The orientation of the layer. The default (NA) automatically determines the orientation from the aesthetic mapping. In the rare event that this fails it can be given explicitly by setting orientation to either "x" or "y". See the Orientation section for more detail.
}
  \item{show.legend}{
logical. Should this layer be included in the legends? NA, the default, includes if any aesthetics are mapped. FALSE never includes, and TRUE always includes. It can also be a named logical vector to finely select the aesthetics to display.
}
  \item{inherit.aes}{
If FALSE, overrides the default aesthetics, rather than combining with them. This is most useful for helper functions that define both data and aesthetics and shouldn't inherit behaviour from the default plot specification, e.g. \code{borders()}.
}
}

\author{
Ko ABE
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{geom_float}}
}
\examples{
ggplot(Orange, aes(x=age, y=circumference, fill=Tree, colour=Tree))+
  stat_diff(alpha=0.5, width=50) +
  geom_line()+geom_point()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
