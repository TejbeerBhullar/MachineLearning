# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')

# Taking care of missing data
Data$Age <- ifelse(is.na(Data$Age), 
                   + ave(Data$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                   + Data$Age)
Data$Salary <- ifelse( is.na(Data$Salary),
                       + ave(Data$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                       + Data$Salary)