
# vim:set ff=unix expandtab ts=2 sw=2:
#####################################################################################################
plotAndCheck=function(fileName,lexp,env){
pdf(file=fileName)
eval(lexp,env)
dev.off()
res=system(command=paste("qpdf --check ",fileName,sep=""))
checkEquals(attr(res,"status"),NULL)
}
