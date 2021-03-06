% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/onehot.R
\name{onehot}
\alias{onehot}
\title{One-hot encoding}
\usage{
onehot(data, var = NULL, nas = "na.pass", sparse = FALSE,
  keep.original = FALSE)
}
\arguments{
\item{data}{A data frame}

\item{var}{A character string/vector of names to be encoded. If NULL, the
default, all character and factor variables will be encoded.}

\item{nas}{What to do with missing values. For na.omit and na.exclude, any
observations with missing data will be removed from the result. With
na.pass, the default, the result will retain the missing values. Otherwise,
with na.fail, an error will be thrown.}

\item{sparse}{Logical (default FALSE). If true, will return only the encoded
variables as a sparse matrix.}

\item{keep.original}{Logical (default FALSE). Keep the original variables?
Not an option if sparse is TRUE.}
}
\value{
A data.frame with the encoded variables, or a sparse matrix of only
  the encoded variables.
}
\description{
Add indicators for all desired variables in a data set.

Deprecated and moved to tidyext package.
}
\details{
This function is a simple one-hot encoder, with a couple options
  that are commonly desired.  Takes the applicable variables and creates a
  binary indicator column for each unique value. If supplied
  non-factor/character variables, it will coerce them to characters and
  proceed accordingly. Will handle missingness, return a sparse matrix, or
  keep the original variable(s) as desired.
}
\examples{
\dontrun{
library(lazerhawk)
str(onehot(iris, keep.original = TRUE))
str(onehot(iris, sparse = TRUE))
str(onehot(mtcars, var = c('vs','cyl')))

iris2 = iris
iris2[sample(1:150, 25),] = NA
str(onehot(iris2))
str(onehot(iris2, nas = 'na.omit'))
}
}
\seealso{
\code{\link[stats]{model.matrix}}
}
