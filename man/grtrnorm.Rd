% File grt/man/grtrnorm.Rd
\name{grtrnorm}
\alias{grtrnorm}
\title{Sample from multiple multivariate normal distributions}
\description{Generate one or more samples from the two or more specified multivariate normal distributions.
}
\usage{
grtrnorm(n,
        np = 2,
        means = list(rep(0,np), rep(0,np)), 
        covs = diag(rep(1,np)), 
        clip.sd = Inf,
        tol = 1e-6,
        empirical = TRUE, 
        seed = NULL,
        response.acc = NULL)
}
\arguments{
\item{n}{the number of samples per population required}
\item{np}{the number of populations to be sampled from}
\item{means}{a list of vectors specifying the means of the variable for each populations}
\item{covs}{a matrix or a list of matrices specifying the covariance matrices of the variables. Each matrix should be positive-definite and symmetric.}
\item{clip.sd}{an integer specifying the cutoff value of standard score. The standard score of a generated sample exceeding this value should be truncated. Default to \code{Inf} (no truncation).}
\item{tol}{tolerance (relative to largest variance) for numerical lack of positive-definiteness in \code{covs}.}
\item{empirical}{logical. If true, \code{means} and \code{covs} specify the empirical rather than population means and covariance matrices.}
\item{seed}{an integer internally supplied as \code{seed} argument to the function \code{\link{set.seed}}. If \code{NULL}, \code{.Random.seed} is used.}
\item{response.acc}{an optional numeric value between 0 and 1, specifying the classification accuracy of a hypothetical observer. See \sQuote{Details}. Default to \code{NULL}.}
}
\details{
This function is essentially a wrapper to the \code{mvrnorm} function in \code{MASS} package. 

If the optional \code{response.acc} argument is supplied, hypothetical random classification responses with specified accuracy will be generated.
}
\value{
a data frame containing a column of numeric category labels and column(s) of sampled values for each variable, and optionally, a column of hypothetical responses.
}
\author{
Author of the original Matlab routines: Leola Alfonso-Reese

Author of R adaptation: Kazunaga Matsuki
}
\references{
  Alfonso-Reese, L. A. (2006)
  \emph{General recognition theory of categorization: A MATLAB toolbox}.
  Behavior Research Methods, 38, 579-583.
}
\examples{
m <- list(c(268,157), c(332, 93))
covs <- matrix(c(4538, 4351, 4351, 4538), ncol=2)
II <- grtrnorm(n=80, np=2, means=m, covs=covs)


m <- list(c(283,98),c(317,98),c(283,152),c(317,152))
covs <- diag(75, ncol=2, nrow=2)
CJ <- grtrnorm(n=c(8,16,16,40), np=4, means=m, covs=covs)
CJ$category <- c(1,1,1,2)[CJ$category]
}
\keyword{datagen}