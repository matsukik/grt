% File grt/man/grg.Rd
\name{grg}
\alias{grg}
\title{General Random Guessing model}
\description{General Random Guessing model}
\usage{
grg(response, fixed = FALSE, k = 2)
}
\arguments{
\item{response}{
A vector containing participant's classification responses.
}
\item{fixed}{logical. If \code{TRUE}, Fixed Random Guessing model is fitted. If \code{FALSE}, General Random Guessing model is fitted. see \sQuote{Details}
}
\item{k}{numeric. the penalty per parameter to be used in calculating AIC. Default to 2.}
}
\details{
The function assumes that there are two categories (e.g, \sQuote{A} and \sQuote{B}) to which each stimulus belongs.


Fixed Random Guessing model assumes that participant responded randomly without response bias; for each stimulus, probability of responding \sQuote{A} and
\sQuote{B} is .5. There are no free parameters in this model (i.e., df = 0).


General Random Guessing model assumes that participants responded randomly but is biased toward one response. The model estimates the response bias (df = 1).
}

\value{
object of class \code{grg}, which is a list object containing:
\item{par}{the fixed or estimated response bias}
\item{logLik}{the log-likelihood of the model}
\item{AIC}{Akaike's An Information Criterion for the fitted model}
}
\references{
  Ashby, F. G., &  Crossley, M. J. (2010). \emph{Interactions between declarative and procedural-learning categorization systems}. 
  Neurobiology of Learning and Memory, 94, 1-12.
}
\seealso{
  \code{\link{glc}},
  \code{\link{gqc}},
  \code{\link{extractAIC.grg}}
}
\examples{
data(subjdemo_2d)
fit.grand <- grg(subjdemo_2d$response, fixed=FALSE)

fit.frand <- grg(subjdemo_2d$response, fixed=TRUE)
}
\keyword{multivariate}
