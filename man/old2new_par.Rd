% File grt/man/old2new_par
\name{old2new_par}
\alias{old2new_par}
\alias{cart2angle}
\title{Convert 'old' to 'new' glcStruct format
}
\description{Converts glcStruct in the 'old' to 'new' format for more efficient optimization where \code{coeffs} vectors are converted to a vector of \code{angle} with length of \code{(coeffs) - 1}
}
\usage{
old2new_par(x)

cart2angle(cart)
}
\arguments{
\item{x}{object of class \code{glcStruct}.}
\item{cart}{vector.}
}

\value{
For \code{old2new_par}, object of class \code{glcStruct}.

For \code{cart2angle}, vector.
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
m <- list(c(187, 142), c(213.4, 97.7))
covs <- diag(c(625, 625))
foo <- ldb(means=m, covs=covs)
old2new_par(foo)

cart2angle(foo$coeffs)
}
\keyword{misc}