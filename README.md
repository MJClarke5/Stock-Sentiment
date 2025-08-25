# Stock-Sentiment
Testing NLP on Earning Call Transcripts

To explore Natural Language Processing methods on NVDA Earning Call transcripts - starting with Q4 2025 (February 2025). This uses the sentiment dictionary from R.

Using NLP, the Net Sentiment will be generated (Positive Words - Negative Words) to determine if the overall Earnings Call was positive or negative.

Once established, LDA and linear regression will be ran to identify trends and potential correlation between sentiment from calls and immediate price changes. This consists of pulling stock data the day prior and the day after the earnings call, taking the difference, and establishing a data table to track this information to enable easier computation. This can allow for analysis of multiple earnings calls for one stock - enhancing the ability to identify trends.

After this, more earnings will be explored of Mag 7 stocks.
