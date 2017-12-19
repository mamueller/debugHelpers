
# vim:set ff=unix expandtab ts=2 sw=2:

namedPlot=function(lexp,env=parent.frame()){
  #get the name of the caller
  pe(quote(sys.calls()))
  fileName=paste(as.character(sys.calls()[[sys.nframe()-1]]),"pdf",sep=".")
  pp('fileName')
  plotAndCheck(fileName,lexp,env)
}

