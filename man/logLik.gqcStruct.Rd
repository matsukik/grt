% File grt/man/logLik.gqcStruct.Rd
\name{logLik.gqcStruct}
\alias{logLik.gqcStruct}
\title{Log-Likelihood of a 'gqcStruct' Object}
\description{Calculate the log-likelihood of the general quadratic classifier model applied to a data set.}
\usage{
\method{logLik}{gqcStruct}(object, response, x, zlimit = Inf, \dots)
}


\arguments{
 \item{object}{object of class \code{gqcStruct}}
 \item{response}{a vector of classification responses used to calculate the log-likelihood of the gqc model.}
 \item{x}{a matrix or dataframe containing values for each stimulus dimensions.} 
 \item{zlimit}{integer. Used to truncate the z-scores whose absolute values are greater than \code{zlimit} when calculating the log-likelihood. Default to Inf}
  \item{\dots}{further arguments (currently unused)}
}

\value{
The log-likelihood for the general quadratic classifier described by \code{object} fitted against the dataset given by \code{response} and \code{x}.  
}
\note{
The value of attributes, \code{attr(, "df")} (degrees of freedom) is calculated based on the assumption that all the parameters in \code{object} are free to vary.
}
\seealso{
    \code{\link{gqc}},
    \code{\link{gqcStruct}},
    \code{\link{logLik.gqc}}
}
\examples{
m <- list(c(187, 142), c(213, 98))
covs <- list(diag(625, ncol=2, nrow=2), diag(600, ncol=2, nrow=2))
db <- qdb(means=m, covs=covs)
data(subjdemo_2d)
logLik(db, subjdemo_2d$response, x=subjdemo_2d[2:3], zlimit=7)
}
\keyword{models}
