% File grt/man/ldb.Rd
\name{ldb}
\alias{ldb}
\title{Linear Decision Bound}
\description{Find coefficients of the ideal linear decision boundary given the means and covariance of two categories.
}
\usage{
ldb(means, covs, 
    covstruct = c("unstructured", "scaledIdentity", "diagonal", "identity"),
    noise = 10)
}
\arguments{
\item{means}{a list of vectors containing means of two distributions.}
\item{covs}{a matrix or a list of matrix containing the covariance matrix common to the two distributions.}
\item{covstruct}{character. If \code{"unstructured"}, the supplied \code{covs} is used as-is. If \code{"scaledIdentity"}, a diagonal covariance matrix with one common variance is used; when the supplied \code{covs} has different values on its diagonal, the mean of the diagonal is used. If \code{"diagonal"}, a diagonal covariance matrix with varying diagonal is used. If \code{"identity"}, an identity matrix is used. Default to \code{"unstructured"}}
\item{noise}{numeric value. See Details. Default to 10.}
}
\details{
The order of vectors in the list \code{means} matters as the sign of \code{coeffs} and \code{bias} in the output will be reversed.

The argument \code{noise} is only for convenience; the supplied value is simply bypassed to the output for the subsequent use, i.e., as object of class \code{glcStruct}.
}
\value{
 The object of class \code{\link{glcStruct}}
}
\author{
Author of the original Matlab routine \sQuote{lindecisbnd}: Leola Alfonso-Reese

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
\code{\link{glcStruct}}, 
\code{\link{glc}}
}
\examples{
m <- list(c(187, 142), c(213.4, 97.7))
covs <- diag(c(625, 625))
foo <- ldb(means=m, covs=covs)

}
\keyword{models}