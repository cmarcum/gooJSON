\name{gooadd}
\alias{gooadd}
\title{
Google Geocoding Geography Syntax Constructors
}
\description{
Parse a list of address parts into a format that the Google Geocoding API finds amiable.
}
\usage{
gooadd(address = list("street","city","state"))
}

\arguments{
  \item{address}{a list of strings, one for each part of an address. See details.}
}
\details{
Geocode queries to the Google Geocoding API requires a particular structure where address parts are separated by commas. This function enforces compliance with the structure that the API expects. Valid locational arguments can include street address, city, county, zip code, country or other geographic entities. Partial addresses are valid (i.e., only city or an intersection). There is no need to declare names in the address list.

For latitude and longitude formatting it is safer to use \link{gooll} to ensure that the spacing is properly formatted on non-UTF encoded systems as whitespace is not ignored by Google.
}
\value{
\item{string}{A character string containing the properly formed geocode with attribute "type" indicating whether the call was to \code{gooll} or \code{gooadd}.}
}
\seealso{\code{\link{gooll}}}
\author{
Christopher Steven Marcum
}
\examples{
gooadd(address=list("3151 Social Science Plaza", "Irvine", "CA", "92697"))
gooll(latlng=list("39.004357","-77.100990"))
}
