#Data Structure Vector
names = c("Adi","Budi","Cindi","Dedi")

#Factor, mirip seperti vector, ditambah informasi mengenai distinct value.

#Matrix, Seperti vector, namun menjadi dua dimensi.
m = matrix(1:12,nrow = 3)

#Array, bisa lebih dari dua dimensi.
a = array(1:24, c(3,4,2))

#Data Frame, Bentuknya seperti tabel, dimana baris
#menunjukkan objek, dan kolom menunjukkan atribut.

users <- data.frame(
  name = names,
  gender = c("male","male","female","male"),
  age = c(10,20,30,40)
)

#List, Berisi kumpulan data yang tipe
#datanya bisa berbeda-beda

l = list(a,names,users)