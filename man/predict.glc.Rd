% File grt/man/predict.glc.Rd
\name{predict.glc}
\alias{predict.glc}
\title{predict method for General Linear Classifier}
\description{Predicted classification based on \sQuote{glc} model object.
}
\usage{
\method{predict}{glc}(object, newdata, seed = NULL, ...)
}
\arguments{
\item{object}{object of class \code{glc}.}
\item{newdata}{a vector or a matrix containing new samples with which the classification prediction is to be made.}
\item{seed}{numeric. The \sQuote{seed} used for the random number generator.}
\item{\dots}{further arguments (currently unused).}
}
\details{
The function predict (or \sQuote{simulate}) classification response of an observer whose noise and linear decision bounds are specified in \code{object}.

The predicted category labels are matched with those used for the fit in \code{object}.

If \code{newdata} is missing, the predictions are made on the data used for the fit.
}
\value{
 a vector of labels of categories to which each sample in \code{newdata} is predicted to belong, according to the model in \code{object}.
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
data(subjdemo_2d)
fit.2dl <- glc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)

m <- list(c(187, 142), c(213.4, 97.7))
covs <- diag(c(900, 900))
newd <- grtrnorm(n=20, np=2, means=m, covs=covs, seed=1234)
predict(fit.2dl, newd[,2:3], seed=1234)
}
\keyword{models}