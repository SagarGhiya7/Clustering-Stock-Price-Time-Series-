library(readr)

# Airline Industry

American_Airlines <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Airline/American Airlines.csv")
Delta <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Airline/Delta.csv")
Jet_Blue <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Airline/Jet Blue.csv")
Southwest <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Airline/Southwest.csv")
Spirit_Airlines <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Airline/Spirit Airlines.csv")

# Banking Industry

Bank_of_America <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Banking/Bank of America.csv")
Capital_One <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Banking/Capital One.csv")
Goldman_Sachs <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Banking/Goldman Sachs.csv")
Morgan_Stanley <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Banking/Morgan Stanley.csv")
Wells_Fargo <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Banking/Wells Fargo.csv")

# Healthcare Industry

Aetna <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Healthcare/Aetna.csv")
AmerisourceBergen <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Healthcare/AmerisourceBergen.csv")
CVS_Health <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Healthcare/CVS Health.csv")
Johnson_Johnson <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Healthcare/Johnson & Johnson.csv")
Mckesson <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Healthcare/Mckesson.csv")

# Retail Industry

Amazon <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Retail/Amazon.csv")
Costco <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Retail/Costco.csv")
Target <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Retail/Target.csv")
Walgreens <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Retail/Walgreens.csv")
Walmart <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Retail/Walmart.csv")

# Technology Industry

Apple <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Technology/Apple.csv")
Google <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Technology/Google.csv")
IBM <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Technology/IBM.csv")
Intel <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Technology/Intel.csv")
Microsoft <- read_csv("C:/Users/Sagar Ghiya/Desktop/Study/SEM 2/Applied Time Series and Spatial Statistics/Stock Price Data/Technology/Microsoft.csv")

# Data Shaping
# Converting in form of data frames
df1 <- data.frame(American_Airlines[,c(1,7)], Delta[,7], Jet_Blue[,7], Southwest[,7], Spirit_Airlines[,7])
colnames(df1) <- c("Date", "American Airlines", "Delta", "Jet Blue", "Southwest", "Spirit Airlines")

df2 <- data.frame(Bank_of_America[,7], Capital_One[,7], Goldman_Sachs[,7], Morgan_Stanley[,7], Wells_Fargo[,7])
colnames(df2) <- c("Bank of America", "Capital One", "Goldman Sachs", "Morgan Stanley", "Wells Fargo")

df3 <- data.frame(Aetna[,7], AmerisourceBergen[,7], CVS_Health[,7], Johnson_Johnson[,7], Mckesson[,7])
colnames(df3) <- c("Aetna", "AmerisourceBergen", "CVS Health", "Johnson & Johnson", "Mckesson")

df4 <- data.frame(Amazon[,7], Costco[,7], Target[,7], Walgreens[,7], Walmart[,7])
colnames(df4) <- c("Amazon", "Costco", "Target", "Walgreens", "Walmart")

df5 <- data.frame(Apple[,7], Google[,7], IBM[,7], Intel[,7], Microsoft[,7])
colnames(df5) <- c("Apple", "Google", "IBM", "Intel", "Microsoft") 

final_df <- cbind.data.frame(df1, df2, df3, df4, df5)



#set1(1:50) 


z1 <- ((final_df[50,2:26] - final_df[1,2:26])/(as.numeric(as.Date(final_df[50,1]) - as.Date(final_df[1,1]))))^2
t1 <- z1*(1/10)

# Set2(51:100)


z2 <- ((final_df[100,2:26] - final_df[51,2:26])/(as.numeric(as.Date(final_df[100,1]) - as.Date(final_df[51,1]))))^2
t2 <- z2*(2/10)

# Set3(101:150)


z3 <- ((final_df[150,2:26] - final_df[101,2:26])/(as.numeric(as.Date(final_df[150,1]) - as.Date(final_df[101,1]))))^2
t3 <- z3*(3/10)

# Set4(151:200)


z4 <- ((final_df[200,2:26] - final_df[151,2:26])/(as.numeric(as.Date(final_df[200,1]) - as.Date(final_df[151,1]))))^2
t4 <- z4*(4/10)

# Set5(201:250)


z5 <- ((final_df[250,2:26] - final_df[201,2:26])/(as.numeric(as.Date(final_df[250,1]) - as.Date(final_df[201,1]))))^2
t5 <- z5*(5/10)

# Set6(251:300)

z6 <- ((final_df[300,2:26] - final_df[251,2:26])/(as.numeric(as.Date(final_df[300,1]) - as.Date(final_df[251,1]))))^2
t6 <- z6*(6/10)

# Set7(301:350)


z7 <- ((final_df[350,2:26] - final_df[301,2:26])/(as.numeric(as.Date(final_df[350,1]) - as.Date(final_df[301,1]))))^2
t7 <- z7*(7/10)

# Set8(351:400)


z8 <- ((final_df[400,2:26] - final_df[351,2:26])/(as.numeric(as.Date(final_df[400,1]) - as.Date(final_df[351,1]))))^2
t8 <- z8*(8/10)

# Set9(401:450)


z9 <- ((final_df[450,2:26] - final_df[401,2:26])/(as.numeric(as.Date(final_df[450,1]) - as.Date(final_df[401,1]))))^2
t9 <- z9*(9/10)

# Set10(451:500)


z10 <- ((final_df[500,2:26] - final_df[451,2:26])/(as.numeric(as.Date(final_df[500,1]) - as.Date(final_df[451,1]))))^2
t10 <- z10*(10/10)

# Calculating Cumulative Weighted Slopes
summation <- t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10
answer <- sqrt(summation)

# k means clustering
cluster <- kmeans(t(answer),5)
cluster

# Plotting
# n dimensional to 2d

library(cluster)
library(fpc)
d <- dist(final_df[2:26])
fit <- cmdscale(d, eig=TRUE,2)

x <- fit$points[,1]
y <- fit$points[,2]


plot(x, y, type='n', col=cluster$cluster )
text(x, y, labels = row.names(final_df), cex=.7)


