% File grt/man/gcjcStruct.Rd
\name{gcjcStruct}
\alias{gcjcStruct}
\title{General Conjunctive Classifier structure}
\description{A list of model parameters that specify a conjunctive decision bound, containing \code{noise}, \code{coeffs}, and \code{bias}.
}
\usage{
gcjcStruct(noise, bias, config=c(1,2,3,4))
}
\arguments{
\item{noise}{a positive non-zero numeric.}
\item{bias}{numeric vector corresponding to the intercepts of the bounds}
\item{config}{A numeric value specifying the location of the conjunctive category in relation to the category bounds. The value 1 indicates the category is on the top right (set as default), 2 indicates the top left, 3 indicates bottom left, and 4 indicates the bottom right.}
}
\value{
object of class \code{gcjcStruct}, which is a list of a named list containing \code{noise}, \code{coeffs}, and \code{bias}.
}
\seealso{
  \code{\link{gcjc}},
  \code{\link{coef.glcStruct}},
  \code{\link{logLik.glcStruct}}
}

\examples{
params <- gcjcStruct(noise=10, bias=c(100, 200), config=1)
}
\keyword{models}