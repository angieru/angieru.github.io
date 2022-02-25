library(tidyverse)
library(plotly)

pge_chart <-
  pge_final %>% 
  ggplot() +
  geom_bar(
    aes(
      x = MONTH,
      y = TOTALKWH,
      fill = CUSTOMERCLASS
    ),
    stat = "identity",
    position = "stack"
  ) +
  labs(
    x = "Month",
    y = "kWh",
    title = "PG&E Territory Monthly Electricity Usage, 2019",
    fill = "Electricity Type"
  )
