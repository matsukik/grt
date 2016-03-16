% File grt/man/logLik.glcStruct.Rd
\name{logLik.glcStruct}
\alias{logLik.glcStruct}
\alias{logLik.gcjcStruct}
\title{Log-Likelihood of a 'glcStruct' or 'gcjcStruct' Object}
\description{Calculate the log-likelihood of the general linear or conjunctive classifier model applied to a data set.}
\usage{
\method{logLik}{glcStruct}(object, response, x, zlimit = Inf, \dots)

\method{logLik}{gcjcStruct}(object, response, x, zlimit = Inf, \dots)
}
\arguments{
 \item{object}{object of class \code{glcStruct} or \code{gcjcStruct} containing the parameter values at which the log-likelihood is to be evaluated. }
 \item{response}{a vector of classification responses used to calculate the log-likelihood of the model.}
 \item{x}{a matrix or dataframe containing values for each stimulus dimensions.} 
 \item{zlimit}{integer. Used to truncate the z-scores whose absolute values are greater than \code{zlimit} when calculating the log-likelihood. Default to \code{Inf}}
  \item{\dots}{further arguments (currently unused)}
}
\value{
  The log-likelihood for the general linear or conjunctive classifier described by \code{object} fitted against the dataset given by \code{response} and \code{x}.  
}
\note{
The value of attributes, \code{attr(, "df")} (degrees of freedom) is calculated based on the assumption that all the parameters in \code{object} are free to vary.
}
\seealso{\code{\link{gqc}},
   \code{\link{gqcStruct}},
   \code{\link{logLik.glc}},
   \code{\link{logLik.gcjc}}
}
\examples{
m <- list(c(187, 142), c(213, 98))
covs <- diag(625, ncol=2, nrow=2)
db <- ldb(means=m, covs=covs, noise=10)
data(subjdemo_2d)
logLik(db, subjdemo_2d$response, x=subjdemo_2d[2:3], zlimit=7)
}
\keyword{models}
