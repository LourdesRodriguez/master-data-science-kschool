# Maquina tragaperras
###################################################################################
# Define wheel and probs
###################################################################################
wheel<-c("DD","7","BBB","BB","B","C","O")
wheel.prob<-c(0.03,0.03,0.06,0.1,0.25,0.01,0.52)
# Colocmos a cada una de las entradas los nombres
names(wheel.prob)=wheel

###################################################################################
# function get_symbols
###################################################################################
get_symbols<-function(wheel,wheel.prob){
  x<-sample(wheel, 3, replace=T, prob=wheel.prob)
  return(x)
} 

# Necesitamos pasar los dos parámetros a la función para que funcione ya que la hemos definido así 

###################################################################################
# function score
##################################################################################
score<-function(tirada){
  equal<-tirada[1]==tirada[2] & tirada[1]==tirada[3]
  #equal<-length(unique(tirada))==1 otra forma de calcular
  bars<- all(tirada %in% c("B","BB","BBB"))
  nc<- sum(tirada=="C")
  
  if (equal & tirada[1]!="O"){
    if (tirada[1]=="DD"){
      prize<-100
    }else if (tirada[1]=="7"){
      prize<-80
    }else if (tirada[1]=="BBB"){
      prize<-40
    }else if (tirada[1]== "BB"){
      prize <-25
    }else{prize<-10}
    
    print(paste("Congrats!", prize))
  }else if (bars | nc==2){
    prize<-5
    print(paste("Congrats!", prize))
  }else if (nc==2){
    prize<-2
    print(paste("Congrats!", prize))
  }else{
    print("No prize")
    prize<-0
    }
  return(prize)
}
  
  
  
  
# Debemos definir encima las funciones que vamos a utilizar posteriormente
play<-function(){
  tirada<-get_symbols(wheel,wheel.prob)
  print(tirada)
  prize<-score(tirada)
  return(prize)
}
