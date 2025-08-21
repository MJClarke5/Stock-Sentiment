install.packages("rvest")
install.packages("dplyr")
install.packages("purrr")
install.packages("quantmod")

library(rvest)
library(dplyr)
library(purrr)
library(quantmod)

#Date - "YYYY-MM-DD"
Stock_Prices <- function(name, start, end)
{
  data <- getSymbols(name, src = "yahoo", from = start, to = end, auto.assign = FALSE)
  return(data)
}
data <- Stock_Prices("NVDA", "2023-01-01","2023-02-01")

# Inspect
head(data)

# Plot closing prices
chartSeries(data, theme = chartTheme("white"))
