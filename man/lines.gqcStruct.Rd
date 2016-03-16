% File grt/man/lines.gqcStruct.Rd
\name{lines.gqcStruct}
\alias{lines.gqcStruct}
\title{lines Method for class 'gqc'}
\description{Add a quadratic decision boundary line through the current plot.
}
\usage{
\method{lines}{gqcStruct}(x, 
    xlim = c(0,1), ylim = c(0,1), 
    npoints = 100, col = "black", 
    \dots)
}
\arguments{
\item{x}{object of class \code{gqcStruct}}
\item{xlim}{the x limits of the plot. Default to \code{c(0,1)}}
\item{ylim}{the y limits of the plot. Default to \code{c(0,1)}}
\item{npoints}{numeric. number of points per dimension used to plot the decision bound. Default is 100.}
\item{col}{the color to be used for the line}
\item{\dots}{further arguments.}

}
\value{
an invisible list of x- and y-coordinates of the line:
\item{x}{a vector of x-coordinates of the line}
\item{y}{a vector of y-coordinates of the line}
}
\examples{
data(subjdemo_2d)
fit.2dq <- gqc(response ~ x + y, data=subjdemo_2d, 
     category=subjdemo_2d$category, zlimit=7)
plot(fit.2dq, fitdb=FALSE, initdb=FALSE)
lines(fit.2dq$par, xlim=c(0,400), ylim=c(0,400), col="red")
lines(fit.2dq$initpar, xlim=c(0,400), ylim=c(0,400), col="blue")
}

\seealso{
\code{\link{plot.gqc}}, \code{{\link{plot3d.gqc}}}
}
\keyword{aplot}