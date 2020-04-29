# assignment bisa pakai <- atau =
#Condition
a=10
if(a==10) {
  print("ini adalah angka 10")
} else if (a<0) {
  print("negatif")
} else {
  print("positif")
}

#Loop
i <- 1
while (i<10) {
  print(i)
  print(i * 2)
  print("hallo")
  i<-i+1
}

for (i in 1:10) {
  print(i)
}

names=c("Adi","Budi","Sindi","Dedi")

for (i in names) {
  print(paste("Halo",i))
}


#Function
luas_lingkaran <- function(jari){
  pi <- 3.14
  luas <- pi*(jari^2)
  return(luas)
}

luas_segitiga = function(alas, tinggi){
  return((alas*tinggi)/2)
}

hw <- function(){
  print("Hai dunia, hehe.")
}
lima <- function(){
  print(5)
}
berhitung <- function (n){
  for (i in 1:n) {
    print(i)
  }
}
