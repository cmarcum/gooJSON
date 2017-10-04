\name{goo2df}
\alias{goo2df}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Google JSON object to Data Frame
}
\description{
Intreprets a JSON object passed from a Google Geocoding API geocode query and returns a \code{data.frame()} R object.
}
\usage{
goo2df(gjl, short.names = TRUE)
}
\arguments{
  \item{gjl}{A JSON object containing the Google Geocoding API geocode query results, possibly passed from \code{fromJSON()}}
  \item{short.names}{logical, should the result names be truncated? Defaults to TRUE. See details.}
}
\details{
If \code{short.names=TRUE} the variable names from the query are truncated to a reasonable size and value. If FALSE, then the verbose names from the JSON tree are used - which can be non-trivially long.
}
\value{
A data frame with two columns:
\item{CODE}{The variable name}
\item{VALUE}{The value of the variable indexed on the rows by CODE}
}
\author{
Christopher Steven Marcum}
\seealso{
\code{\link{fromJSON}}
}
\examples{
uci.json<-fromJSON(file=system.file("extdata/uci.json",package="gooJSON"))
goo2df(uci.json)
\dontrun{uci.add<-gooadd(address=list("3151 Social Science Plaza", 
   "Irvine", "CA", "92697"))}
\dontrun{uci.map<-goomap(uci.add)}
\dontrun{goo2df(uci.map)}
}
