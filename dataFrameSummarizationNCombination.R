library(dplyr)

dataset = read.csv('sample - superstore.csv')

dataset %>% group_by(ï..Category, Segment) %>% summarise(total_sales = sum(Sales), 
                                                avg_sales = mean(Sales), 
                                                min_quantity = min(Quantity), 
                                                max_quantity = max(Quantity),
                                                n_order = n())

data_a = dataset %>% filter(Segment=='Corporate') %>%
  select(c(Order.ID,Order.Date,Segment,ï..Category,Sub.Category,Sales)) %>%
  head(10)

data_b = dataset %>% filter(ï..Category=='Technology') %>%
  select(c(Order.ID,Order.Date,Segment,ï..Category,Sub.Category,Sales)) %>%
  head(9)

#Penggabungan Data Frame
#Berdasarkan baris
intersect(data_a,data_b)

union(data_a,data_b)

bind_rows(data_a,data_b)

#ada di data a tapi tidak ada di data b
setdiff(data_a,data_b)
#berisi semua isi data b kecuali yang intersect dengan data a
setdiff(data_b,data_a)

#Berdasaran kolom
data_c <- select(data_a, c(Order.ID,Sub.Category,Segment,Sales)) %>% head(9)

data_d <- select(data_b, c(Order.ID,Sub.Category,ï..Category,Order.Date))

#jumlah kolom harus sama
bind_cols(data_c,data_d)

inner_join(data_c,data_d)

full_join(data_c,data_d)

left_join(data_c,data_d)

right_join(data_c,data_d)
