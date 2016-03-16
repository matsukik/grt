% File grt/man/gcjc.Rd
\name{gcjc}
\alias{gcjc}
\alias{print.gcjc}
\title{General Conjunctive Classifier}
\description{Fit a general conjunctive classifier.}

\usage{
gcjc(formula, data, category, par, config = 1, zlimit = Inf,
    fixed = list(), equal.noise = TRUE, opt = c("nlminb", "optim"), 
    lower=-Inf, upper=Inf, control=list())
}
\arguments{
\item{formula}{
A formula of the form \code{response ~ x1 + x2 + \dots}, where the 
response specifies the grouping factor (generally a participant's response) and the right hand side specifies the relevant dimensions or features of the stimuli.
}
\item{data}{
A data frame from which variables specified in \code{formula} are taken.
}
\item{category}{
(Optional.) A factor specifying the true category membership of the stimuli.
}
\item{par}{
object of class \code{gcjcStruct} or a named list containing a set of initial parameters - that is, \code{noise} and \code{bias} (intercepts).
}
\item{config}{A numeric value specifying the location of the conjunctive category in relation to the category bounds. The value 1 indicates the category is on the top right (set as default), 2 indicates the top left, 3 indicates bottom left, and 4 indicates the bottom right.
}
\item{zlimit}{
numeric. The z-scores (or discriminant scores) beyond the specified value will be truncated. Default to \code{Inf}.
}
\item{fixed}{
A named list of logical vectors specifying whether each of \code{noise} and \code{bias} parameters should be fixed to the initial value. Default to \code{list(noise=c(FALSE, TRUE), bias=FALSE)}. A fatal error will be returned if set to all \code{TRUE}.
}
\item{equal.noise}{logical. If set to \code{TRUE} (default), two bounds will have the same noise parameter.
}
\item{opt}{
A character string specifying the optimizer to be used: either \code{\link{nlminb}} (the default) or \code{\link{optim}}.
If \dQuote{optim}, \dQuote{L-BFGS-B} method is used (see \sQuote{Details} of \code{\link{optim}}) .
}
\item{lower, upper}{
Bounds on the parameters. see \sQuote{Details} for default values.
}
\item{control}{
A list of control parameters passed to the internal optimization function. See \sQuote{Details} of \code{\link{nlminb}} or \code{\link{optim}}.
}
}

\details{
If \code{par} is not fully specified in the argument, the function attempts to calculate the initial parameter values based on means by category or by response.

The default lower and upper values are selected based on the range of the \code{data} input so that the decision bound is found within the range of the data and convergence can be reached.
}
\value{
object of the class \code{gcjc}, i.e., a list containing the following components:
\item{terms}{
the \code{\link{terms}} object used.
}
\item{call}{
the matched call.
}
\item{model}{
the design matrix used to fit the model.
}
\item{category}{
the category vector as specified in the input.
}
\item{initpar}{
the initial parameter used to fit the model.
}
\item{par}{
the fitted parameter.
}
\item{logLik}{
the log-likelihood at convergence.
}
}

\references{

  Ashby, F. G. (1992) 
  \emph{Multidimensional models of perception and cognition}. 
  Lawrence Erlbaum Associates.
  
}
\seealso{
  \code{\link{glc}},
  \code{\link{logLik.gcjc}},
  \code{\link{coef.gcjc}},
  \code{\link{plot.gcjc}}
}
\examples{
data(subjdemo_cj)

m.cj <- gcjc(response ~ x1 + x2, data=subjdemo_cj, 
  config=2, category=subjdemo_cj$category, zlimit=7)

}
\keyword{multivariate}
