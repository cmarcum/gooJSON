\name{goomap}
\alias{goomap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Google Geocoding API Geocode Query}
\description{Returns a JSON formatted list from a geocode query to the Google Geocoding API}
\usage{
goomap(gooadd, key=NULL, options = c("oe=utf8", "sensor=false"))
}
\arguments{
  \item{gooadd}{A string containing a properly formed address. See details.}
  \item{key}{Optionally, a string containing the user's Google Maps API key. See details.}
  \item{options}{A character vector containing optional parameters passed to the Google Maps API query. See details.}
}
\details{
Properly formed addresses can be obtained by using the \code{gooadd} helper function. While usually less useful in practical applications, latitude and longitude queries are supported provided that they are separated by a comma. 

An api `key' is not longer necessary. This parameter is still available for backwards compatibility. An old maps api key can be obtained from Google by visiting the \url{http://code.google.com/apis/maps/signup.html}.

Several search options are available for selecting and formatting output from the query. The default arguments return `UTF-8' encrypted data and tells Google that user is not employing a GPS-enabled device to obtain the data, respectively. There are many more options available and users should consult the Google Geocoding API documentation for additional information. See \url{https://developers.google.com/maps/documentation/geocoding} for a list of all available options. 
}
\value{
A variable length list in the form of a parsed JSON object.
}
\author{
Christopher Steven Marcum
}
\seealso{
\code{\link{gooadd}},\code{\link{rjson}},\code{\link{fromJSON}}
}
\references{\url{https://developers.google.com/maps/documentation/geocoding}}
\examples{
## Not run
\dontrun{uci.add<-gooadd(address=list("3151 Social Science Plaza", 
   "Irvine", "CA", "92697"))}
\dontrun{goomap(uci.add)}
#Example using lat/long:
\dontrun{goomap(gooll(latlng=list("39.004357","-77.100990")))}
}
