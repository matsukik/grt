% File grt/man/plot.glc
\name{plot.glc}
\alias{plot.glc}
\title{Plot Method for Class 'glc'}
\description{Plot the fitted data set and linear decision boundary.}
\usage{
\method{plot}{glc}(x, fitdb = TRUE, initdb = FALSE, xlim = NULL, ylim = NULL, bg, pch, \dots)
}
\arguments{
\item{x}{object of class \code{glc}}
\item{fitdb}{logical. If \code{TRUE}, the fitted decision bound is plotted. Default to \code{TRUE}}
\item{initdb}{logical. If \code{TRUE}, the decision bound specified by the initial parameters is plotted. Default to \code{FALSE}}
\item{xlim}{the x limits of the plot}
\item{ylim}{the y limits of the plot}
\item{bg}{the background color to be used for points. Default is \code{c("white","gray")[response]} where \code{response} represents the response vector of the model}
\item{pch}{the symbols to be used as points. Default is \code{c(21,24)[x$category]} }
\item{\dots}{further arguments.}
}
\details{
This function produces a scatter plot of data matrix in the \code{x} and (optionally) decision boundary specified within (i.e., \code{x$par} and/or \code{x$initpar}). 

The look of the plot differs depending on the dimension of the model. If the dimension is 1, the model matrix is plotted on the y-axis, and category vector (as in \code{x$category}) is plotted on the x axis. If the dimension is 2, scatter plot of the model matrix is plotted. If the dimension is 3, \code{plot3d.glc} is called to create a 3D scatter plot. If the dimension is greater than 3, an error message will be returned.
}
\examples{
data(subjdemo_2d)
fit.2dl <- glc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)
plot(fit.2dl)

#if one wants to plot decision bounds in
# colors different from the defaults
plot(fit.2dl, fitdb=FALSE)
abline(coef=coef(fit.2dl$par), col="orange")
abline(coef=coef(fit.2dl$initpar), col="purple")

}
\seealso{
\code{\link{plot3d.glc}}
}
\keyword{multivariate}