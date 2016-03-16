% File grt/man/grtMeans.Rd
\name{grtMeans}
\alias{grtMeans}
\title{Obtain means of two multivariate normal populations satisfying certain criteria}
\description{Obtain means of two multivariate normal populations having the specified covariance structure and centroid, and with which classification based on the optimal decision boundary satisfies the supplied probability of correct classification.
}
\usage{
grtMeans(covs, centroid, optldb, p.correct, initd = 5, stepsize = 1)
}
\arguments{
\item{covs}{a matrix or a list of matrices specifying the covariance matrices of the variables. Each matrix should be positive-definite and symmetric.}
\item{centroid}{a vector specifying the center of the two population means}
\item{optldb}{object of class \code{glcStruct} or a vector of coefficients for the optimal linear decision bound.}
\item{p.correct}{a numeric value between 0 to 1 that specifies the optimal classification performance in terms of probability of correct classification given the decision boundary \code{optbnd}.}
\item{initd}{numeric. An initial distance between the means of two populations. Default is 5.}
\item{stepsize}{a positive numeric specifying step size to be taken when searching for the means. Default is 1.}
}
\value{
\item{means}{a list of two vectors specifying the means of two populations.}
\item{covs}{a matrix of (averaged) covariance.}
\item{p.correct}{the obtained probability of correct classification.}
}
\author{
Author of the original Matlab routine \sQuote{Design2dGRTexp}: Leola Alfonso-Reese

Author of R adaptation: Kazunaga Matsuki
}
\references{
  Alfonso-Reese, L. A. (2006)
  \emph{General recognition theory of categorization: A MATLAB toolbox}.
  Behavior Research Methods, 38, 579-583.
}
\examples{
foo <- grtMeans(diag(c(625,625)), centroid=c(200, 200*.6), 
    optldb=c(.6,-1,0), p.correct=.85)
}
\seealso{\code{\link{ldb.p.correct}}}
\keyword{datagen}