library(dplyr)
library(ggplot2)

dataset <- read.csv("sample_superstore.csv")

#Scatter plot
ggplot(dataset, aes(x=Sales,y=Profit)) + geom_point(colour='green')

#Histogram
#ggplot(dataset, aes(x=Sales)) + geom_histogram(bins = 10)
ggplot(dataset, aes(x=Quantity)) + geom_histogram(binwidth = 1)


#Bar chart
#ggplot(dataset, aes(x=Segment, y=Sales)) + geom_bar(stat = 'identity', width = 0.5, fill = 'navy')
#ggplot(dataset, aes(x=Segment, y=Sales)) + geom_bar(stat = 'identity', width = 0.5, aes(fill = Category))
#ggplot(dataset, aes(x=Category, y=Sales)) + geom_bar(stat = 'identity', width = 0.5, aes(fill = Segment))
ggplot(dataset, aes(x=Category, y=Quantity)) + geom_bar(stat = 'identity', width = 0.5, aes(fill = Segment))

#Pie chart
sales_per_segment = dataset %>%
  group_by(Segment) %>%
  summarise(total_sales = sum(Sales))

#buat bar chart terlebih dahulu
#ggplot(sales_per_segment, aes(x="", y=total_sales, fill=Segment)) + geom_bar(stat = "identity", width = 1)

#tambahkan function coord_polard
ggplot(sales_per_segment, aes(x="", y=total_sales, fill=Segment)) + geom_bar(stat = "identity", width = 1) + coord_polar("y", start = 0)
