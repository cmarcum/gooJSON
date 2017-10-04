gooll <-
function(latlng=list("latitude","longitude")){
    gooadd<-paste(latlng,collapse=",")
    attr(gooadd,"type")<-"latlng"
    return(gooadd)
}

