% File grt/man/gqcStruct.Rd
\name{gqcStruct}
\alias{gqcStruct}
\title{General Quadratic Classifier structure.}
\description{A named list of model parameters that specify a quadratic decision bound, containing \code{pnoise}, \code{cnoise}, \code{coeffs}, and \code{bias}.
}
\usage{
gqcStruct(pnoise, cnoise, coeffs, bias)
}
\arguments{
\item{pnoise}{a positive non-zero numeric.}
\item{cnoise}{a positive non-zero numeric.}
\item{coeffs}{a vector. The \code{length(coeffs)} should be equal to \code{sum(1:(dim+1)) - 1} where \code{dim} is the number of the model's dimension}
\item{bias}{numeric.}
}
\value{
object of class \code{gqcStruct}, i.e., a named list containing \code{pnoise}, \code{cnoise}, \code{coeffs}, and \code{bias}.
}
\seealso{
  \code{\link{gqc}},
  \code{\link{logLik.gqcStruct}}
}

\examples{
params <- gqcStruct(pnoise=10, cnoise=100, coeffs=c(1,2,3,4,5), bias=6)
}
\keyword{models}