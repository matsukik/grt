% File grt/man/coef.glc
\name{coef.glc}
\alias{coef.glc}
\alias{coef.glcStruct}
\alias{coef.gcjc}
\title{Extract 'glc' or 'gcjc' coefficients}
\description{
Extracts the coefficients from the model object \code{glc}, \code{glcStruct}, or \code{gcjc}.
}
\usage{
\method{coef}{glc}(object, \dots)

\method{coef}{glcStruct}(object, \dots)

\method{coef}{gcjc}(object, \dots)
}
\arguments{
\item{object}{object of class \code{glc} or \code{glcStruct}}
\item{\dots}{further arguments}
}
\details{
Both the object \code{glc} and \code{glcStruct} contain the parameters for the decision boundary in the form: 
\deqn{
   a_1x_1 + a_2x_2 \ldots a_nx_n + b = 0
}{a1x1 + a2x2 \dots anxn + b = 0}

This function transforms and returns the coefficients of the function solved with respect the \eqn{x_n}{xn}.

For the object \code{gcjc}, a list of two coefficients (Intercepts) are returned.
}
\examples{
data(subjdemo_2d)
fit.2dl <- glc(response ~ x + y, data=subjdemo_2d,
    category=subjdemo_2d$category, zlimit=7)
plot(fit.2dl, fitdb=FALSE)
abline(coef(fit.2dl), col = "red")
abline(coef(fit.2dl$initpar))

fit.1dx <- update(fit.2dl, . ~ . -y)
abline(v=coef(fit.1dx), col="green")

fit.1dy <- update(fit.2dl, . ~ . -x)
abline(h=coef(fit.1dy), col="blue")
}
\keyword{models}