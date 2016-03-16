% File grt/man/new2old_par
\name{new2old_par}
\alias{new2old_par}
\alias{angle2cart}
\title{Convert 'new' to 'old' glcStruct format
}
\description{Converts the glcStruct in \sQuote{new} format to \sQuote{old} format whereby a vector of \code{angle} is converted to \code{coeffs}.
}
\usage{
new2old_par(x)

angle2cart(angle)
}
\arguments{
\item{x}{object of class \code{glcStruct}.}
\item{angle}{vector.}
}
\value{
For \code{new2old_par}, object of class \code{glcStruct}.

For \code{angle2cart}, vector.
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
bar <- old2new_par(foo)
new2old_par(bar)

angle2cart(bar$angle)
}
\seealso{
\code{\link{old2new_par}}
\code{\link{cart2angle}}
\code{\link{glcStruct}}
}
\keyword{misc}