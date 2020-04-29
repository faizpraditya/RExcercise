library(dplyr)
library(ggplot2)

dataset <- read.csv("Dataset_superstore_simple.csv")

#Line chart
#Contoh disini mencoba membuat line chart untuk monthly sales
dataset$order_date <- as.Date(dataset$order_date)

dataset$order_month <- as.Date(cut(dataset$order_date, breaks='month'))

ggplot(dataset, aes(x=order_month, y=sales)) + 
  stat_summary(fun.y = sum, geom='line')

monthly_sales <- dataset %>%
  group_by(order_month) %>%
  summarise(sales = sum(sales))

ggplot(monthly_sales, aes(x=order_month, y=sales)) + 
  geom_line() +
  geom_point(colour='green')
