# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)

# Encoding categorical data
Data$Country = factor(Data$Country, 
                      + levels = c('France', 'Spain', 'Germany'),
                      + labels = c(1, 2, 3))
Data$Purchased = factor(Data$Purchased, 
                        + levels = c('Yes', 'No'),
                        + labels = c(1, 0))