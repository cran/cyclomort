% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loglike.R
\name{loglike}
\alias{loglike}
\title{Obtain log-likelihood value from a data set given a set of parameter values}
\usage{
loglike(x, gammas, mus, rhos)
}
\arguments{
\item{x}{a cycloSurv object}

\item{gammas}{k-vector of average hazard values for each component}

\item{mus}{k-vector of peaks}

\item{rhos}{k-vector of concentration parameters}
}
\value{
the maximum likelihood value for this set of data
}
\description{
Obtain log-likelihood value from a data set given a set of parameter values
}
