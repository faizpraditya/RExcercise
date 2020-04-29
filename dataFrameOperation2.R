library(dplyr)

dataset <- read.csv("sample - superstore.csv")

#Memfilter data 
#dataset_result <- filter(dataset, City == 'Los Angeles', Profit<0)
#bisa menggunakan AND, OR, ==, !=
#dataset_result <- filter(dataset, City == 'Los Angeles' $ Profit<0)
dataset_result <- filter(dataset, City == 'Los Angeles' | Profit<0)

#Membuat kolom baru, bisa dari memproses data kolom lain
#Bisa menggunakan operasi matematika lain.
dataset_result <- mutate(dataset, avg_price = Sales/Quantity)

#Membuat kolom baru, bisa dari memproses data kolom lain
#hanya tampil kolom baru saja
dataset_result <- transmute(dataset, avg_price = Sales/Quantity)

dataset3 = dataset
dataset3$avg_price = transmute(dataset, avg_price = Sales/Quantity)