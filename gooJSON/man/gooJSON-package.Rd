\name{gooJSON-package}
\alias{gooJSON-package}
\alias{gooJSON}
\docType{package}
\title{
Google JSON Data Interpreter for R
}
\description{
A suite of helper functions for obtaining data from the Google Geocoding API JSON objects. Calls Google Geocoding API and returns results as an R data frame.}
\details{
There are currently various packages for providing an R interface to the Google Geocoding API. However, this is the first package that returns data from geocode queries (place names, accuracy codes, coordinates, et cetera) passed as JSON objects. Both native calls to the API (R internet access required) and JSON files saved onto the users hard-drive are supported. Users must supply a Google Geocoding API key to directly query the API from R.
Depends on the \code{rjson} package.}
\author{
Christopher Steven Marcum

Maintainer:  Christopher Steven Marcum <chris.marcum@nih.gov>
}
\keyword{ package }
\seealso{
\code{\link[rjson]{rjson}}
}
