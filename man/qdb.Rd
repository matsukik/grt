% File grt/man/qdb.Rd
\name{qdb}
\alias{qdb}
\title{Quadratic Decision Bound}
\description{Find coefficients of the ideal quadratic decision boundary given the means and covariance of two categories.
}
\usage{
qdb(means, covs, pnoise = 10, cnoise = 100, sphere = FALSE)
}
\arguments{
\item{means}{a list of vectors containing means of the two distributions.}
\item{covs}{a list containing the covariance matrices of the two distributions.}
\item{pnoise, cnoise}{numeric. Defaults set to 10, and 100, respectively. see \sQuote{Details}
}
\item{sphere}{logical. If TRUE, the returned decison bound forms a circle or sphere.}
}
\details{
The order of vectors in the list \code{means} and \code{covs} matters as the sign of \code{coeffs} and \code{bias} object in the output will be reversed.

The argument \code{pnoise} and \code{cnoise} is only for convenience; the supplied value is simply bypassed to the output for the subsequent use, i.e., as object of class \code{gqcStruct}.
}
\value{
object of class \code{gqcStruct}
}
\author{
Author of the original Matlab routine \sQuote{quaddecisbnd}: Leola Alfonso-Reese

Author of R adaptation: Kazunaga Matsuki
}
\references{
  Alfonso-Reese, L. A. (2006)
  \emph{General recognition theory of categorization: A MATLAB toolbox}.
  Behavior Research Methods, 38, 579-583.
}
\seealso{
\code{\link{mcovs}}, 
\code{\link{qdb}},
\code{\link{gqcStruct}}, 
\code{\link{gqc}}
}
\examples{
m <- list(c(187, 142), c(213.4, 97.7))
covs <- list(diag(c(625, 625)), diag(c(625, 625)))
foo <- qdb(means=m, covs=covs)

}
\keyword{models}