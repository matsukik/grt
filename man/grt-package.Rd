\name{grt-package}
\alias{grt-package}
\alias{grt}
\docType{package}
\title{
General Recognition Theory
}
\description{
  
Functions to generate and analyze data for psychology experiments based
on the General Recognition Theory.

}
\details{

  This package is written based mostly on the GRT Toolbox for MATLAB by
  Alfonso-Reese (2006), although many functions have been renamed and
  modified from the original in order to make them more general and
  \dQuote{R-like.}

  The functions \code{\link{grtrnorm}} and \code{\link{grtMeans}} are
  used for design categorization experiments and generating stimuli. The
  functions \code{\link{glc}}, \code{\link{gcjc}}, \code{\link{gqc}},
  and \code{\link{grg}} are used for fitting the general linear
  classifier, the general conjunctive classifier, the general quadratic
  classifier, and the general random guessing model, respectively. The
  \code{\link{glc}}, \code{\link{gcjc}}, and \code{\link{gqc}} have plot
  methods (\code{\link{plot.glc}}, \code{\link{plot.gcjc}},
  \code{\link{plot.gqc}}, \code{\link{plot3d.glc}},
  \code{\link{plot3d.gqc}}).

  For a complete list of functions, use \code{library(help =
    "catlearn")}.

}
\author{
  
  Kazunaga Matsuki

  Maintainer: Andy Wills \email{andy@willslab.co.uk}
  
}
\references{
  
  Alfonso-Reese, L. A. (2006) \emph{General recognition theory of
  categorization: A MATLAB toolbox}.  Behavior Research Methods, 38,
  579-583.
  
  Ashby, F. G., & Gott, R. E. (1988). \emph{Decision rules in the
  perception and categorization of multidimensional stimuli}.  Journal
  of Experimental Psychology: Learning, Memory, & Cognition, 14, 33-53.

  Ashby, F. G. (1992) \emph{Multidimensional models of perception and
    cognition}.  Lawrence Erlbaum Associates.  }

\keyword{ package }
