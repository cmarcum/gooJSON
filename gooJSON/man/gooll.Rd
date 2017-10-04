\name{gooll}
\alias{gooll}
\title{
Google Geocoding Geography Syntax Constructors
}
\description{
Parse a list of lat/lon parts into a format that the Google Geocoding API finds amiable.
}

\usage{
gooll(latlng = list("latitude","longitude"))
}

\arguments{
  \item{latlng}{a list of strings, one for latitude and one for longitude. See details.}
}
\details{
Geocode queries to the Google Geocoding API requires a particular structure where address parts are separated by commas. In the case of latitude and longitude, there can be no whitespace in the format. This function ensures compliance with the API syntax. 
}
\value{
\item{string}{A character string containing the properly formed geocode with attribute "type" indicating whether the call was to \code{gooll} or \code{gooadd}.}
}
\seealso{\code{\link{gooadd}}}
\author{
Christopher Steven Marcum
}
\examples{
gooadd(address=list("3151 Social Science Plaza", "Irvine", "CA", "92697"))
gooll(latlng=list("39.004357","-77.100990"))
}
