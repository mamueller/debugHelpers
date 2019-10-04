pe <- function(arg,env=parent.frame()){
	### This function is used to print out a value of an quoted expression together with it and is helpful for debugging
  cat("\n########################################################################\n")
  p_ind<-(sys.parent(n=1))
	if(p_ind==0){
	  print(get(string,env))
  }else{
    callingFun <-as.list(sys.call(-1))[[1]]
    callerName<-toString(callingFun)
    out <- sprintf('pe in %s:\nExpression\t: %s\nResult\t\t: \n',callerName,toString(substitute(arg)))
    cat(out)
    print(arg)
    cat("\n########################################################################\n")
    }
}
