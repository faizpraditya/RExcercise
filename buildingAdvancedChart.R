library(dplyr)
library(ggplot2)

dataset <- read.csv('dataset_superstore_simple.csv')

plot1 = ggplot(dataset, aes(x = sales, y=profit)) +
  geom_point(aes(color=category), size=3, shape=2) +
  #geom_smooth()
  geom_smooth(method = "lm", color='#535e29', linetype='longdash', size=2) +
  #Menambahkan title
  labs(title = 'Scatterplot Sales vs Profit',
       subtitle = "Based on Dataset Superstore",
       caption = 'R Language Tutorial'
       ) +
  theme(
    plot.title = element_text(color = 'navy', size = 15, face = 'bold'),
    plot.subtitle = element_text(size = 12, face = 'italic'),
  )

plot2 = plot1 +
  #Menambahkan keterangan pada sumbu x dan y
  xlab("Order Sales") + ylab("Order Profit") +
  #Mengubah range/limit
  xlim(c(0,7500)) + ylim(c(-2500,2500)) +
  theme(
    #legend.position = 'bottom'
    legend.position = c(0.8,0.2),
    legend.title = element_text(color='blue', size=12, face="bold"),
    legend.text = element_text(color='red')
  )

plot2

#secara default, yang disimpan adalah plot yang terakhir.
#Parameter ke-2 digunakan untuk memilih plot mana yang ingin di simpan.
ggsave('tes.png',plot1)
ggsave('tes2.png',plot2)