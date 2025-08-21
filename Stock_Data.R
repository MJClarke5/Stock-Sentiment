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
  stock_data <- data.frame(date = index(data), coredata(data))
  return(data)
  return(stock_data)
}
data <- Stock_Prices("NVDA", "2023-01-01","2023-02-01")

# Inspect
head(data)

# Plot closing prices
chartSeries(data, theme = chartTheme("white"))


#Pulling Sentiment and Stock Changes together
#Need a data table of Sentiments from Earning Calls
#Need a table of dates as well
Start_Dates <- c()
End_Dates <- c()
NetSentiment <- NetSentiment
Stock_Diff <- Stock_Diff
Positive_Trend <- 0
Negative_Trend <- 0
for(i in 1:length(Start_Dates))
{
  if(NetSentiment[i]>0 && Stock_Diff[i]>0)
  {
    Positive_Trend = Positive_Trend +1
  }
  if(NetSentiment[i]<0 && Stock_Diff[i]<0)
  {
    Positive_Trend = Positive_Trend +1
  }
  if(NetSentiment[i]<0 && Stock_Diff[i]>0)
  {
    Negative_Trend = Negative_Trend +1
  }
  if(NetSentiment[i]>0 && Stock_Diff[i]<0)
  {
    Negative_Trend = Negative_Trend +1
  }
}