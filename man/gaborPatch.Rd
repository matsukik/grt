\name{gaborPatch}
\alias{gaborPatch}
\title{
Draw a gray-scale Gabor Patch
}
\description{
Draw a gray-scale Gabor Patch
}
\usage{
gaborPatch(sf, 
    theta = 0, 
    rad = (theta * pi)/180, 
    pc = 1, 
    sigma = 1/6, 
    psi = 0, 
    grating = c("cosine", "sine"), 
    npoints = 100, 
    trim = 0, 
    trim.col = .5,
    ...)
}
\arguments{
  \item{sf}{number of cycles per image.}
  \item{theta}{orientation in degree. See \sQuote{Details}}
  \item{rad}{orientation in radian}
  \item{pc}{a fraction (0 to 1) specifying the peak contrast of the Gabor}
  \item{sigma}{the standard deviation of the Gaussian mask. Either a single numeric or a numeric vector of length 2.}
  \item{psi}{phase offset in radian}
  \item{grating}{type of grating to be used. Default to \sQuote{cosine}.}
  \item{npoints}{number of points per line used to draw the patch.}
  \item{trim}{Gaussian values smaller than the specified value should be trimmed.}
  \item{trim.col}{gray level of the trimmed part of the image, between 0 (\sQuote{black}) and 1 (\sQuote{white}). Default to .5 (\sQuote{gray}) Setting it to any other value or \code{NA} makes the trimmed part transparent.}
  \item{\dots}{additional parameters for \code{\link{image}} may be passed as arguments to this function.}
}
\details{
The arguments \code{theta} and \code{rad} is the same thing but in different units. If both are supplied, \code{rad} takes the precedence.
}
\value{
invisibly returns the matrix of the plotted values.
}
\references{
Fredericksen, R. E., Bex, P. J., & Verstraten, F. A. J. (1997). \emph{How Big is a Gabor and Why Should We Care?} Journal of the Optical Society of America A. 14, 1--12. 

Gabor Filter. (2010, June 5). In \emph{Wikipedia, the free encyclopedia.} Retrieved July 7, 2010, from http://en.wikipedia.org/wiki/Gabor_filter
}
\note{
This function is written just for fun; it is not optimized for speed or for performance.
}
\examples{
# An imitation of Fredericksen et al.'s (1997) Fig 1.
# that demonstrate the relation between peak contrast
# and perceived size of the Gabor

op <- par(mfcol = c(3, 3), pty = "m", mai = c(0,0,0,0))
for(i in c(.85, .21, .06)){
    for(j in c(1/6, 1/7, 1/8)){
        gaborPatch(20, pc = i, sigma = j)
    }
}
par(op)

\dontrun{
# a typical plot of the stimuli and category structure
# often seen in artificial category-learning literatures.
m  <-  list(c(268, 157), c(332, 93))
covs  <-  matrix(c(4538, 4351, 4351, 4538), ncol = 2)
II <- grtrnorm(n = 40, np = 2, means = m, covs = covs,
   clip.sd = 4, seed = 1234)
II$sf <- .25+(II$x1/50)
II$theta <- II$x2*(18/50)

plot(II[,2:3], xlim = c(-100,600), ylim = c(-200,500), 
    pch = 21, bg = c("white","gray")[II$category])
abline(a = -175, b = 1)

library(Hmisc)
idx <- c(20, 31, 35, 49, 62)
xpos <- c(0, 100, 300, 350, 550)
ypos <- c(50, 300, 420, -120, 50)
for(i in 1:5)
{
    j = idx[i]
    segments(x0=II[j,"x1"], y0=II[j,"x2"], x1=xpos[i], y1=ypos[i])
    subplot(gaborPatch(sf=II[j,"sf"], theta=II[j,"theta"]), x=xpos[i], y=ypos[i])
}
}

}
\keyword{misc}
