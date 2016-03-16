% File grt/man/plot3d.glc
\name{plot3d.glc}
\alias{plot3d.glc}
\title{plot3d Method for Class 'glc'}
\description{plot the fitted 3D data set and linear decision boundary.
}
\usage{
\method{plot3d}{glc}(x, fitdb = TRUE, initdb = FALSE, 
    lims = NULL, alpha = .5, \dots)

}
\arguments{
\item{x}{object of class \code{glc}}
\item{fitdb}{logical. If \code{TRUE}, the fitted decision bound will be plotted. Default to \code{TRUE}}
\item{initdb}{logical. If \code{TRUE}, the decision bound specified by the initial parameters will be plotted. Default to \code{FALSE}}
\item{lims}{column matrix of the x, y, and z limits of the plot}
\item{alpha}{alpha value for the decision bound surface(s) ranging from 0 (fully transparent) to 1 (opaque). Default is .5.}
\item{\dots}{further arguments.}
}
\details{
This function produces a 3D scatter plot of data matrix in the \code{x} and (optionally) decision boundary specified within (i.e., \code{x$par} and/or \code{x$initpar}), using \code{points3d} and \code{quads3d} in the \code{rgl} package respectively.
}
\references{
Daniel Adler, Oleg Nenadic and Walter Zucchini (2003) RGL: A R-library for 3D visualization with OpenGL
}
\examples{
data(subjdemo_3d)
fit.3dl <- glc(response ~ x + y + z, data=subjdemo_3d, 
    category=subjdemo_3d$category, zlimit=7)
plot3d(fit.3dl)
}

\seealso{
\code{\link{plot.glc}}, \code{\link{plot3d.gqc}}
}
\keyword{multivariate}