goomap<-function (gooadd, key=NULL, options = c("oe=utf8", "sensor=false")) {
    require(rjson)
    #b.url <- "http://maps.google.com/maps/geo?q=" #deprecated google maps api
    b.url <- "http://maps.googleapis.com/maps/api/geocode/json?"
    b.type<-attr(gooadd,"type")
    b.url<-paste(paste(b.url,b.type,sep=""),"=",sep="")
    if(b.type=="latlng"){b.add<-paste(gooadd,collapse=",")} else b.add <- gsub(" {1,}", "+", gooadd)
    o.url<-paste(b.url,b.add,sep="")
    op.url<-paste(c(o.url, options, key), collapse = "&")
    suppressWarnings(fromJSON(file = op.url))
}

