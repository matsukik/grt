% File grt/man/logLik.glc.Rd
\name{logLik.glc}
\alias{logLik.glc}
\alias{logLik.gcjc}
\title{Log-Likelihood of a 'glc' or 'gcjc' Object}
\description{Extract the log-likelihood of the fitted general linear or conjunctive classifier model.}
\usage{
\method{logLik}{glc}(object, \dots)

\method{logLik}{gcjc}(object, \dots)
}
\arguments{
 \item{object}{object of class \code{glc} or \code{gcjc}}
 \item{\dots}{further arguments (currently unused)}
}
\value{
  The log-likelihood for the general linear or conjunctive classifier represented by the estimated parameters in \code{object}
}
\seealso{\code{\link{glc}}, 
	\code{\link{logLik.glcStruct}}, 
	\code{\link{gcjc}}, 
	\code{\link{logLik.gcjcStruct}}
}
\examples{
data(subjdemo_2d)
fit <- glc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)
logLik(fit)
}
\note{
This function is intended for indirect internal use by functions such as \code{AIC}. 
To obtain the log-likelihood of the fitted model applied to new dataset, use \code{\link{logLik.glcStruct}} or \code{\link{logLik.gcjcStruct}}
}
\keyword{models}

