library(ggplot2)

data(mpg)

avg_hwy <- aggregate(hwy ~ class, data = mpg, FUN = mean)
avg_hwy$class <- reorder(avg_hwy$class, avg_hwy$hwy)

ggplot(avg_hwy, aes(x = class, y = hwy, fill = hwy)) +
  geom_col(width = 0.7) +
  geom_text(aes(label = round(hwy, 1)), hjust = -0.2, size = 3.5, color = "gray30") +
  coord_flip() +
  scale_fill_gradient(low = "#f0a500", high = "#2c7bb6") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.15))) +
  labs(
    title = "Average Highway Fuel Economy by Vehicle Class",
    subtitle = "Based on the ggplot2 mpg dataset",
    x = NULL,
    y = "Highway MPG",
    fill = "MPG"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title    = element_text(face = "bold", size = 15),
    plot.subtitle = element_text(color = "gray50", margin = margin(b = 10)),
    panel.grid.major.y = element_blank(),
    panel.grid.minor   = element_blank(),
    legend.position    = "none"
  )
