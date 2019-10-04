
# vim:set ff=unix expandtab ts=2 sw=2:
pp <- function(# print out a visible message  
  string,
  env=parent.frame()
){
	### This function is used to print out a value of a variable together with its name and is helpful for debugging
  cat("\n############################### pp ########################################\n")
  p_ind<-(sys.parent(n=1))
	if(p_ind==0){
	  print(get(string,env))
  }else{
    print(p_ind)
	  callingFun <-as.list(sys.call(-1))[[1]]
	  callerName<-toString(callingFun)
	  print(paste("pp in",callerName,string,":="))
	}
}
