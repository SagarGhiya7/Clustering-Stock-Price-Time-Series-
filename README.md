# Clustering-Stock-Price-Time-Series-

Collected 25 time series belonging to 5 industries from Yahoo finance. I wanted to cluster the stock price time series to study the behaviour of different company stocks and which company stocks are correlated to each other. 

Most common way or practical way is to apply k means clustering to 25 time series. However to achieve this I had to convert a time series to a single point in order to perform k means clustering. This way I would have 25 different points to cluster.

Navigated Relevant Literature to find out a way to break a time series to a single point such that I could later cluster them. Figured out Cumulative Weighted Slope as best method to cluster time series. In this method, time series is divided into approximately 10 different strips. For each strip, slope is calcuated and squared. Then first strip is multiplied with (1/10), second strip with (2/10) and so on. In this different weights are given to different strips and then added up to get cumulative weighted slope. 

Finally I implemented k means clustering to get 98.2% within cluster sum of squares which is quite good. 
