% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{prices}
\alias{prices}
\title{Providing prices (unit values) of sold products}
\usage{
prices(data, period, set = c())
}
\arguments{
\item{data}{The user's data frame. It must contain columns: \code{time} (as Date in format: year-month-day, e.g. '2020-12-01'), \code{prices} (as positive numeric), \code{quantities} (as positive numeric) and \code{prodID} (as numeric or character) with unique product IDs.}

\item{period}{The time period (as character) limited to the year and month, e.g. "2019-03".}

\item{set}{The set of unique product IDs to be used for determining prices of sold products (see also \code{\link{data_matching}}). If the \code{set} is empty, the function returns prices of all products being available in \code{period}.}
}
\value{
The function analyzes the user's data frame and returns prices (unit value) of products with given \code{ID} and being sold in the time period indicated by the \code{period} parameter.
}
\description{
The function returns prices (unit values) of sold products with given IDs.
}
\examples{
\donttest{prices(milk, period="2019-06")}
prices(milk, period="2019-12",set=c(400032, 71772, 82919))
}
