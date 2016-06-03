% File grt/man/plot3d.gqc
\name{plot3d.gqc}
\alias{plot3d.gqc}
\title{plot3d Method for Class 'gqc'}
\description{plot the fitted 3D data set and quadratic decision boundaries.
}
\usage{
\method{plot3d}{gqc}(x, fitdb = TRUE, initdb = FALSE,
    lims = NULL, npoints = 100, alpha = .5,
    fill = TRUE, smooth = FALSE, \dots)

}
\arguments{
\item{x}{object of class \code{gqc}}
\item{fitdb}{logical. If \code{TRUE}, the fitted decision bound will be plotted. Default to \code{TRUE}}
\item{initdb}{logical. If \code{TRUE}, the decision bound specified by the initial parameters will be plotted. Default to \code{FALSE}}
\item{lims}{column matrix of the x, y, and z limits of the plot. If \code{NULL}, limits are calculated from the model matrix of \code{x}. Default to NULL.}
\item{npoints}{number of points per dimension (i.e., x, y, and z) used to plot the decision bound surface. Default is 100.}
\item{alpha}{alpha value for the decision bound surface(s) ranging from 0 (fully transparent) to 1 (opaque). Default is .5}
\item{fill}{logical. If \code{TRUE}, decision bounds (if \code{fitdb} or \code{initdb} is set to \code{TRUE}) should be drawn with filled surfaces. If FALSE, a wire frame should be used. Default to \code{TRUE}.}
\item{smooth}{logical. If \code{TRUE}, smooth shading should be used. Default to \code{FALSE}.}
\item{\dots}{further arguments.}
}
\details{
This function produces a 3D scatter plot of data matrix of \code{x} and (optionally) quadratic decision boundaries specified within (i.e., \code{x$par} and/or \code{x$initpar}), using \code{points3d} function in the \code{rgl} package and \code{contour3d} function in the \code{misc3d} package respectively.
}
\references{
Daniel Adler, Oleg Nenadic and Walter Zucchini (2003) RGL: A R-library for 3D visualization with OpenGL
}
\examples{
\dontrun{
data(subjdemo_3d)
fit.3dq <- gqc(response ~ x + y + z, data=subjdemo_3d,
    category=subjdemo_3d$category, zlimit=7)
plot3d(fit.3dq)
}
}

\seealso{
\code{\link{plot.gqc}}, \code{{\link{plot3d.gqc}}}
}
\keyword{multivariate}
