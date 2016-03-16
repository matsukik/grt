% File grt/man/glcStruct.Rd
\name{glcStruct}
\alias{glcStruct}
\title{General Linear Classifier structure}
\description{A named list of model parameters that specify a linear decision bound, containing \code{noise}, \code{coeffs}, and \code{bias}.
}
\usage{
glcStruct(noise, coeffs, bias)
}
\arguments{
\item{noise}{a positive non-zero numeric.}
\item{coeffs}{vector. the length of the \code{coeffs} should correspond to the number of the model's dimension.}
\item{bias}{numeric.}
}
\value{
object of class \code{glcStruct}, i.e., a named list containing \code{noise}, \code{coeffs}, and \code{bias}. Returned values are normalized, such that each value are divided by the euclidean norm of the \code{coeffs} vector, and the sum of \code{coeffs^2} is 1.
}
\seealso{
  \code{\link{glc}},
  \code{\link{coef.glcStruct}},
  \code{\link{logLik.glcStruct}},
  \code{\link{old2new_par}},
  \code{\link{new2old_par}}
}

\examples{
params <- glcStruct(noise=10, coeffs=c(1, -1), bias=0)
}
\keyword{models}