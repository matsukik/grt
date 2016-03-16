% File grt/man/unscale.Rd
\name{unscale}
\alias{unscale}
\title{Un-scale or re-center the scaled or centered Matrix-like object}
\description{This function revert a Matrix-like object that is scaled or centered via \code{scale.default} to data with the original scale/center.
}
\usage{
unscale(x)
}
\arguments{
\item{x}{numeric matrix(like object).}
}
\value{
a matrix that are re-centered or un-scaled, based on the value of attributes "scaled:center" and "scaled:scale" of \code{x}. If neither of those attributes is specified, \code{x} is returned.
}
\seealso{\code{\link{scale}}}
\examples{
require(stats)
x <- matrix(1:10, ncol=2)
unscale(z <- scale(x))

#maybe useful for truncating
trunc <- 1
z[abs(z) > trunc] <- sign(z[abs(z) > trunc])*trunc
unscale(z)
}
\keyword{array}