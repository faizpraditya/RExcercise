library(dplyr)

dataset = read.csv("sample - superstore")

#dataset2 = filter(dataset, City == "Los Angeles")

#dataset2 = mutate(dataset2, avg_price=Sales/Quantity)

#dataset2 = select(dataset2, c(Order.ID,Order.Date,Sales,avg_price))

dataset3 = dataset %>%
  filter(City == "Los Angeles") %>%
  mutate(avg_price=Sales/Quantity) %>%
  select(c(Order.ID,Order.Date,Sales,avg_price))
