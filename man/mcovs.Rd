% File grt/man/mcovs.Rd
\name{mcovs}
\alias{mcovs}
\alias{mcovs.default}
\alias{mcovs.formula}
\title{Calculate sample means and covariance(s) of multivariate data}
\description{Calculate sample means and covariance(s) of multivariate data
}
\usage{
\method{mcovs}{default}(x, grouping, pooled=TRUE, \dots)

\method{mcovs}{formula}(formula, data, pooled=TRUE, \dots)
}
\arguments{
\item{formula}{A formula in the form of \code{grouping ~ x1 + x2 + \dots}, where the right hand side specifies the sample variables.}
\item{data}{Data frame from which variables specified in \code{formula} are taken.}
\item{x}{data frame or Matrix containing sample values.}
\item{grouping}{a factor specifying the population to which the samples in \code{x} belong.}
\item{pooled}{logical. If \code{TRUE}, pooled variance-covariance matrix is calculated. If \code{FALSE}, a list of variance-covariance matrices for each groups are calculated. Default to \code{TRUE}.}
\item{\dots}{further arguments}
}
\value{
 A list containing:
\item{N}{total number of samples.}
\item{counts}{number of samples per groups.}
\item{lev}{levels of the \code{grouping} factor}
\item{means}{a named list of vectors specifying the means for each group. Named according to \code{lev}.}
\item{covs}{a named list of variance-covarinace matrix(es). Named as \code{pooled} if \code{pooled=TRUE}, otherwise according to \code{lev}.}
}
\keyword{multivariate}