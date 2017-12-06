
# vim:set ff=unix expandtab ts=2 sw=2:
pp <- function(# print out a visible message  
  string,
  env=parent.frame()
){
	### This function is used to print out a value of a variable together with its name and is helpful for debugging
  cat("\n############################### mm ########################################\n")
	sc <- sys.call()
	if(!is.null(sc)){
	  callingFun <-as.list(sys.call(-1))[[1]]
	  callerName<-toString(callingFun)
	  print(paste("pp in",callerName,string,":="))
	}
  print(parent.frame())
	print(get(string,env))
}
