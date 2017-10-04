gooadd <-
function(address=list("street","city","state")){
    gooadd<-paste(address,collapse=", ")
    attr(gooadd,"type")<-"address"
    return(gooadd)
}

