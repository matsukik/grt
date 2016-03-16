% File grt/man/scale.Rd
\name{scale}
\alias{scale}
\alias{scale.glc}
\alias{scale.gqc}
\title{Scale method for the class 'glc' and 'gqc'}
\description{Return the discriminant scores obtained by applying the general linear classifier to the fitted data.
}
\usage{
\method{scale}{glc}(x, initdb = FALSE, zlimit = Inf, \dots)
\method{scale}{gqc}(x, initdb = FALSE, zlimit = Inf, \dots)
}
\arguments{
\item{x}{object of class \code{glc} or \code{gqc}}
\item{initdb}{optional logical. If \code{TRUE}, the returned vector represents the z-scores with respect to the initial parameters, rather than the fitted parameters. Defaults to \code{FALSE}.}
\item{zlimit}{optional numeric. Used to truncate the scores beyond the speficied value. Default to \code{Inf}}
 \item{\dots}{further arguments (currently unused)}
}
\note{
The generic function \code{scale} is redefined to accept arguments other than \code{x}, \code{center}, and \code{scale}. 
}
\examples{

data(subjdemo_2d)
fit.2dl <- glc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)
scale(fit.2dl)

fit.2dq <- gqc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)
scale(fit.2dq)


\dontrun{
#plots using the discriminant scores
require(Hmisc)
options(digits=3)
fit.2dl <- glc(response ~ x + y, data=subjdemo_2d, 
    category=subjdemo_2d$category, zlimit=7)
# z-scores based on the initial decision bound
# split by the true category membership
zinit <- split(scale(fit.2dl, initdb=TRUE), subjdemo_2d$category)
histbackback(zinit)

# z-scores based on the fitted decision bound
# split by the participants' response
zfit1 <- split(scale(fit.2dl, initdb=FALSE), subjdemo_2d$category)
histbackback(zfit1)

# z-scores based on the fitted decision bound
# split by the true category membership
zfit2 <- split(scale(fit.2dl, initdb=FALSE), subjdemo_2d$response)
histbackback(zfit2)
}
}
\keyword{array}