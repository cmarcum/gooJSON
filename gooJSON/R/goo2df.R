goo2df <-
function(gjl,short.names=TRUE){
  b1<-unlist(gjl)
  gdf<-cbind(CODE=names(b1),VALUES=b1)
  rownames(gdf)<-1:length(b1)
  if(short.names){
  nb1<-strsplit(names(b1),"\\.")
  gdf[,1]<-unlist(lapply(nb1,function(x) x[length(x)]))
  }
  return(as.data.frame(gdf,stringsAsFactors=FALSE))
}

