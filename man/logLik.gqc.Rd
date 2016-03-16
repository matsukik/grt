% file grt/man/logLik.gqc.Rd

\name{logLik.gqc}
\title{Log-Likelihood of a 'gqc' Object}
\description{Extract the log-likelihood of the fitted general quadratic classifier model.}
\usage{
\method{logLik}{gqc}(object, \dots)
}
\alias{logLik.gqc}

\arguments{
 \item{object}{object of class \code{gqc}}
 \item{\dots}{further arguments (currently unused)}
}
\value{
  The log-likelihood for the general quadratic classifier represented by the estimated parameters in \code{object}
}
\seealso{\code{\link{gqc}}, \code{\link{logLik.gqcStruct}}
}
\note{
This function is intended for indirect internal use by functions such as \code{AIC}. 
To obtain the log-likelihood of the fitted model applied to new dataset, use \code{\link{logLik.gqcStruct}}
}
\keyword{models}
