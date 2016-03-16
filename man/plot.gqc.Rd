% File grt/man/plot.gqc
\name{plot.gqc}
\alias{plot.gqc}
\title{plot Method for Class 'gqc'}
\description{Plot the fitted data set and quadratic decision boundary.}
\usage{
\method{plot}{gqc}(x, fitdb = TRUE, initdb = FALSE, 
    xlim = NULL, ylim = NULL, bg, pch, npoints = 100, \dots) 
}
\arguments{
\item{x}{object of class \code{gqc}}
\item{fitdb}{logical. If \code{TRUE}, the fitted decision bound will be plotted. Default to \code{TRUE}.}
\item{initdb}{logical. If \code{TRUE}, the decision bound specified by the initial parameters will be plotted. Default to \code{FALSE}.}
\item{xlim}{the x limits of the plot. If \code{NULL}, limits are calculated from the model matrix. Default to \code{NULL}.}
\item{ylim}{the y limits of the plot. If \code{NULL}, limits are calculated from the model matrix. Default to \code{NULL}.}
\item{bg}{the background color to be used for points in 2D scatter plot. 
Default is \code{c("white", "gray")[response]} where \code{response} represents the response vector of the model}
\item{pch}{the symbols to be used as points in 2D scatter plot. Default is \code{c(21,24)[x$category]} }
\item{npoints}{number of points per dimension used to plot the decision bound. Default is 100.}
\item{\dots}{further arguments.}
}
\details{
This function produces a scatter plot of data matrix in the \code{x} and (optionally) decision boundary (i.e., \code{x$par} and/or \code{x$initpar}). 

The look of the plot differs depending on the dimension of the model. If the dimension is 2, scatter plot of the model matrix is plotted. If the dimension is 3, \code{plot3d.gqc} is called to create a 3D scatter plot. In all other cases, an error message will be returned.
}
\examples{
data(subjdemo_2d)
fit.2dq <- gqc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)
plot(fit.2dq)

}

\seealso{
\code{\link{lines.gqcStruct}}, \code{{\link{plot3d.gqc}}}
}
\keyword{multivariate}