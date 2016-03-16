% File grt/man/ldb.p.correct.Rd
\name{ldb.p.correct}
\alias{ldb.p.correct}
\title{Probability of correct classification based on the optimal linear decision bound.}
\description{
Estimates the probability of correct classification under the condition in which the optimal linear decision boundary is used to categorize the samples from two multivariate normal populations with the specified parameters
}
\usage{
ldb.p.correct(means, covs, noise = 0)
}
\arguments{
\item{means}{a list of vectors, each specifying the means of a multivariate normal population.}
\item{covs}{a matrix or a list of matrices specifying the covariance matrix of the each multivariate normal population. If a list is given and length(covs) > 2, an unweighted average of the matrices is used.}
\item{noise}{an optional numeric value specifying the noise associated with the decision bound. Default to 0.}
}
\author{
Author of the original Matlab routine \sQuote{linprobcorr}: Leola Alfonso-Reese

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
ldb.p.correct(foo$means, foo$covs)
}
\keyword{multivariate}