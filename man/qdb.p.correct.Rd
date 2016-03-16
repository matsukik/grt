% File grt/man/qdb.p.correct.Rd
\name{qdb.p.correct}
\alias{qdb.p.correct}
\title{the proportion correct of the quadratic decision boundary.}
\description{
Calculate the proportion correct obtained by categorizing samples form one multivariate normal population using the quadratic decision boundary.
}
\usage{
qdb.p.correct(x, qdb, refpts = colMeans(x))
}
\arguments{
\item{x}{a vector or matrix containing the values of samples from one multivariate normal population.}
\item{qdb}{object of class \code{gqcStruct} or a vector containing the values for \code{coeffs} and \code{bias} of an quadratic decision bound.}
\item{refpts}{a numeric vector used as a reference point to determine the correct side of the \code{qdb} for classifying \code{x}. The \code{length(refpts)} should be equal to {ncol(x)}. Default to \code{colMeans(x)}. }
}
\details{
The function assumes that all the points specified in \code{x} belong to just one category.
}
\author{
Author of the original Matlab routine \sQuote{quadbndpercorr}: Leola Alfonso-Reese

Author of R adaptation: Kazunaga Matsuki
}
\references{
  Alfonso-Reese, L. A. (2006)
  \emph{General recognition theory of categorization: A MATLAB toolbox}.
  Behavior Research Methods, 38, 579-583.

}
\examples{
data(subjdemo_2d)
tmp <- split(subjdemo_2d, subjdemo_2d$category)
mc <- mcovs(category ~ x + y, data=subjdemo_2d, pooled=FALSE)
db <- qdb(mc$means, mc$covs)
qdb.p.correct(tmp[[1]][,2:3], db)
}
\keyword{multivariate}