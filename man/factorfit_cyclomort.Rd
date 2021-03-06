% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/factorfit_cyclomort.R
\name{factorfit_cyclomort}
\alias{factorfit_cyclomort}
\title{Factorial analysis of seasonal survival models}
\usage{
factorfit_cyclomort(f, data = NULL, n.seasons = 2, ...)
}
\arguments{
\item{f}{formula object used for identifying different classes}

\item{data}{a data frame containing a cycloSurv object detailing mortalities 
for a set of observations and a factor identifying the value of a categorical 
variable for each observation}

\item{n.seasons}{number of seasons to fit model to}

\item{...}{additional arguments to fit_cyclomort call}
}
\value{
table comparing outputs from null (factor has no effect on mortality 
and they are all in the same group) model to multi-factor model using AIC, 
log-likelihood and likelihood ratio test
}
\description{
This function takes a \code{Y~X} style formula to compare null models of 
pooled data against separately fitted models against a given factor.  For now 
this works only for a single discrete factor.
}
\examples{
# fit factorial model
data(seasonalsex)
seasonalsex.factorfit <- factorfit_cyclomort(event ~ sex, data = seasonalsex, n.seasons = 1)

# summary
summary(seasonalsex.factorfit, coefs = TRUE)
\donttest{plot(seasonalsex.factorfit)}
}
