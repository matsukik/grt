% File grt/man/gqc.Rd
\name{gqc}
\alias{gqc}
\alias{print.gqc}
\title{General Quadratic Classifier}
\description{Fit a general quadratic classifier (a.k.a. quadratic decison-bound model).}

\usage{
gqc(formula,
    data,
    category,
    par = list(),
    zlimit = Inf,
    fixed = list(),
    opt = c("nlminb", "optim"),
    lower=-Inf,
    upper=Inf,
    control=list())
}
\arguments{
\item{formula}{
A formula of the form \code{response ~ x1 + x2 + \dots} where the 
response specifies the grouping factor (generally a participant's response) and the right hand side specifies the feature values of the classified stimuli.
}
\item{data}{
A data frame from which variables specified in \code{formula} are taken.
}
\item{category}{
(Optional.) A factor specifying the true category membership of the stimuli.
}
\item{par}{
object of class \code{gqcStruct} or named list containing a set of initial parameters used to fit the data.
}
\item{zlimit}{
numeric. The z-scores (or discriminant scores) beyond the specified value will be truncated. Default to \code{Inf}
}
\item{fixed}{
A named list of logical vectors specifying whether each of \code{pnoise}, \code{cnoise}, \code{coeffs}, and \code{bias} parameters should be fixed to the initial value. Default to all \code{FALSE}. A fatal error will result if set to all \code{TRUE}.
}
\item{opt}{
A character string specifying the optimizer to be used: either \code{\link{nlminb}} (the default) or \code{\link{optim}}.
If \code{"optim"}, \code{"L-BFGS-B"} method is used (see \sQuote{Details} of \code{\link{optim}})
}
\item{lower, upper}{
Bounds on the parameters. Default values of lower and upper are \code{c(.1, .1, rep(-Inf, length(unlist(par))-2))}, and \code{c(5000, 5000, rep( Inf, length(unlist(par))-2))}, respectively.
}
\item{control}{
A list of control parameters passed to the optimizer. See \sQuote{Details} of \code{\link{nlminb}} or \code{\link{optim}}
}
}
\details{
If \code{par} is not fully specified in the argument, the function attempts to calculate the initial parameter values by internally calling the functions \code{mcovs} and \code{qdb}. The response specified in the \code{formula} is used as the grouping factor in \code{mcovs}.
}
\value{
object of class \code{gqc}, i.e., a list containing the following components:

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
  Alfonso-Reese, L. A. (2006)
  \emph{General recognition theory of categorization: A MATLAB toolbox}.
  Behavior Research Methods, 38, 579-583.
  
  Ashby, F. G., &  Gott, R. E. (1988). \emph{Decision rules in the perception
  and categorization of multidimensional stimuli}. 
  Journal of Experimental Psychology: Learning, Memory, & Cognition, 14, 33-53.

  Ashby, F. G. (1992) 
  \emph{Multidimensional models of perception and cognition}. 
  Lawrence Erlbaum Associates.
  
}
\seealso{
  \code{\link{glc}},
  \code{\link{qdb}},
  \code{\link{logLik.gqc}},
  \code{\link{logLik.gqcStruct}},
  \code{\link{plot.gqc}},
  \code{\link{plot3d.gqc}}
}
\examples{
data(subjdemo_2d)
fit.2dq <- gqc(response ~ x + y, data=subjdemo_2d,
    category=subjdemo_2d$category, zlimit=7)
}
\keyword{multivariate}
