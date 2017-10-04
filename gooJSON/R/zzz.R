######################################################################
#
# zzz.R
#
# Last Modified 04/06/12
# Licensed under the GNU General Public License version 2 (June, 1991)
#
# Part of the R/gooJSON package
#
# .onLoad is run when the package is loaded with library(gooJSON)
#
######################################################################

.onLoad <- function(lib, pkg){
    abt<-packageDescription('gooJSON')
packageStartupMessage(
    c("\n\t",abt$Title,"\n"),
    c("Version: ",abt$Version,"\n"),
    c("Compiled:",abt$Built,"\n\n"),
    c(paste("copyright (c) 2011, Christopher S. Marcum\n",sep="")),
    c('Type help(package="gooJSON") to get started.\n'))
}



