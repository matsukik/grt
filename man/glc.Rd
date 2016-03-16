% File grt/man/glc.Rd
\name{glc}
\alias{glc}
\alias{print.glc}
\title{General Linear Classifier}
\description{Fit a general linear classifier (a.k.a. linear decison-bound model).}

\usage{
glc(formula, data, category, par = list(), zlimit = Inf,
    covstruct=c("unstructured", "scaledIdentity", "diagonal", "identity"),
    fixed = list(), opt = c("nlminb", "optim"), 
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
object of class \code{glcStruct} or named list containing a set of initial parameters (i.e., \code{noise}, \code{coeffs}, \code{bias}) used to fit the data.
}
\item{zlimit}{
numeric. The z-scores (or discriminant scores) beyond the specified value will be truncated. Default to \code{Inf}.
}
\item{covstruct}{
An optional character string. Only used when the initial parameters are not fully specified. see \code{\link{ldb}}.
}
\item{fixed}{
A named list of logical vectors specifying whether each of \code{noise}, \code{coeffs}, and \code{bias} parameters should be fixed to the initial value. Default to \code{list(noise=FALSE, coeffs=FALSE, bias=FALSE}. A fatal error will be returned if set to all \code{TRUE}.
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
If \code{par} is not fully specified in the argument, the function attempts to calculate the initial parameter values by internally calling the functions \code{mcovs} and \code{ldb}. If \code{category} is also not specified, the response specified in the \code{formula} is used as the grouping factor in \code{mcovs}.


The default lower and upper values vary depending on the dimension of the model (i.e., the number of variables in the right hand side of \code{formula}). In all cases, default lower and upper values for the \code{noise} parameter is .001 and 500 respectively. In cases when an one-dimensional model is fitted, lower and upper bounds for the \code{bias} parameters are selected based on the range of the \code{data} input so that the decision bound is found within the reasonable range of the data and convergence can be reached. In all other cases, \code{coeffs} and \code{bias} has no limits.


When an one-dimensional model is being fit, \code{fixed$coeffs} always becomes \code{TRUE}. 
}
\value{
object of the class \code{glc}, i.e., a list containing the following components:
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
  \code{\link{gqc}},
  \code{\link{ldb}},
  \code{\link{logLik.glc}},
  \code{\link{coef.glc}},
  \code{\link{predict.glc}},
  \code{\link{scale.glc}},
  \code{\link{plot.glc}},
  \code{\link{plot3d.glc}}
}
\examples{
data(subjdemo_2d)
d2 <- subjdemo_2d
#fit a 2d suboptimal model
fit.2dl <- glc(response ~ x + y, data=d2, category=d2$category, zlimit=7)
#fit a 1d model (on the dimention 'y') on the same dataset
fit.1dy <- glc(response ~ y, data=d2, category=d2$category, zlimit=7)
#or using update()
#fit.1dy <- update(fit.2dl, . ~ . -x)

#fit a 2d optimal model
fit.2dlopt <- glc(response ~ x + y, data=d2, category=d2$category, zlimit=7, 
    fixed=list(coeffs=TRUE, bias=TRUE))

#calculate AIC and compare
AIC(fit.2dl, fit.1dy, fit.2dlopt)
}
\keyword{multivariate}
