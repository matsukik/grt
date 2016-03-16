% File grt/man/plot.gcjc
\name{plot.gcjc}
\alias{plot.gcjc}
\title{Plot Method for Class 'gcjc'}
\description{Plot the fitted data set and decision boundary.}
\usage{
\method{plot}{gcjc}(x, fitdb = TRUE, initdb = FALSE, xlim = NULL, ylim = NULL, bg, pch, \dots)
}
\arguments{
\item{x}{object of class \code{gcjc}}
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
}
\examples{
m <- list(c(100,200),c(100,100),c(200,100),c(200,200))
covs <- diag(30^2, ncol=2, nrow=2)
set.seed(1)
CJ <- grtrnorm(n=c(50,20,10,20), np=4, means=m, covs=covs)
CJ$category <- c(1,2,2,2)[CJ$category]
#create ramdom responses with 80% accuracy
CJ$response <- CJ$category
set.seed(1)
incorrect <- sample(1:100, size=20)
CJ$response[incorrect] <- abs(CJ$response[incorrect] - 3)

#now fit the model
m.cj <- gcjc(response ~ x1 + x2, data=CJ, config=2, category=CJ$category, zlimit=7)

plot(m.cj)

}
\keyword{multivariate}