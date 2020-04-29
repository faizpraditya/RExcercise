library(dplyr)

#Import/read
dataset <- read.csv('Sample - Superstore.csv')

#Export/write
write.csv(dataset,'dataset_new.csv')

#tampilkan semua
dataset_result <- select(dataset, Postal.Code)
#tampilkan hanya
dataset_result2 <- select(dataset, c(Order.ID,Customer.Name, Product.Name))
#tampilkan kecuali
dataset_result3 <- select(dataset, -c(Order.ID,Customer.Name, Product.Name))

#tampilkan dari dataset_result hanya city dan profit
select(dataset_result3, c(City,Profit))
