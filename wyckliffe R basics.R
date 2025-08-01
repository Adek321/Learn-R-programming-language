#Rstudio has 4 panes/pannels that is source pane,console,environment /history pane and files,plot,package panes
2+3
4*4
50/5
5^4 
18%%7 #Modulo - returns the remainder(18 divide by 7 14divide by )
# 7=2 therefore 18-14 =4)
45%%4
(500*2)+(80/2) #Order of operations(BODMAS 500times 2=1000 + 40= 1040)

#assigment operators
h <-
   #<-   
 # =
  #>=
 # mostly used is <- or mostly i prefer
  #assigment of variables
 alex<- 30
 print(alex)
 selling <- 500  
 view(selling)
 cost <- 250
profit<-selling -cost
print(profit)
typeof(profit)
typeof(selling)
ch <- "HELLO" 
typeof(ch)
y<-20
print(y)
H<- 30
print(H)
print(selling)
print(paste('hello','students'))
print('hello','students')
paste('hello','students')
print(paste('hello','students',sep=',')) #Sep is for the chosen separator between the pasted items
paste("Treavor","Wendi",sep=",")
print(paste("hello wycliffe"))
paste0('hello','students')  #Displays without space
# Vectors in R

# Create vectors
vec1<-c(10,20,30)# concatenate (C) its used to combine various data types forming a vector
vec1
class(vec1)
k<-c(12,34,23,24)
k
k<-c(12,34,23,24)
kt<-c(2,3,4,5,6)
kt
vec2<-c("a","b","c")
vec2
class(vec2)
vec3<-c(TRUE,FALSE,TRUE)
vec3
class(vec3)
vec4<-c(10,"a",TRUE) #R converts every value to character type
vec4
class(vec4)
vec5 <- c(FALSE,2) #R converts every value to numeric type
vec5
class(vec5)
vec6 <- c('A',1)
vec6
vec7<-c("A",1,FALSE)
vec7
vect<-c(1:20)
vec8<-seq(1,20)
vec9<-1:25
#Create a vector with odd values between 1 to 20
odd_value<-seq(1,20,2) #the seq should run by two
odd_value
#Create a vector with even values b/w 1 to 20
even_value<-seq(2,20,2)
even_value
#Create vector with 10 odd values starting from 20
vec10<-seq(from=21,by=2,length.out=10)
vec10
#starting 30
vec111<-seq(from=31,by=2,length.out=10)
vec111

#HOW TO INSTALL ALL THE PACKAGES
# Data Wrangling
install.packages(c("dplyr", "tidyr", "reshape2", "data.table"))

# Data Cleaning
install.packages(c("janitor", "stringr", "lubridate", "forcats"))

# Advanced Aggregation Operations
install.packages(c("plyr", "dplyr", "data.table"))

# Data Visualization
install.packages(c("ggplot2", "lattice", "plotly", "leaflet"))
#Now lets dive deep in to the data ,Here's a guide to data manipulation, subsetting, modifying data, and adding columns with conditions using R. I'll provide code snippets for each task:
#Data Manipulation---1.Loading data
# Load necessary packages
library(dplyr)
library(tidyr)

# Load data
data <- mtcars
#Subsetting Data:Subsetting is extracting specific parts of your data frame, based on conditions.Example: Subset rows based on conditions
# Subset rows where mpg is greater than 20
subset_data <- filter(data, mpg > 20)
# Select only the columns mpg, cyl, and hp
selected_data <- select(data, mpg, cyl, hp)
#Modifying Data
#Example: Rename columns
# Rename column mpg to Miles_per_Gallon
renamed_data <- rename(data, Miles_per_Gallon = mpg)
#example:Modify values
# Multiply hp column values by 2
data <- mutate(data, hp = hp * 2)
#Adding Columns with Conditions
#Example: Add a column based on a condition
# Add a new column "Efficiency" based on mpg value
data <- mutate(data, Efficiency = ifelse(mpg > 20, "High", "Low"))
#Example: Add a column using a custom function
# Define a custom function to categorize cars
car_type <- function(cyl) {
  if(cyl == 4) {
    return("Compact")
  } else if(cyl == 6) {
    return("Midsize")
  } else {
    return("Large")
  }
}

# Apply the custom function to add a new column
data <- mutate(data, Car_Type = sapply(cyl, car_type))
#Summary of Operations

# SUMMARY OF WHAT WITH HAVE LEARNT


# Load necessary packages
library(dplyr)
library(tidyr)

# Load data
data <- mtcars

# Subset data where mpg is greater than 20
subset_data <- filter(data, mpg > 20)

# Select specific columns (mpg, cyl, hp)
selected_data <- select(data, mpg, cyl, hp)

# Rename column mpg to Miles_per_Gallon
renamed_data <- rename(data, Miles_per_Gallon = mpg)

# Modify hp column values (multiply by 2)
data <- mutate(data, hp = hp * 2)

# Add a new column "Efficiency" based on mpg value
data <- mutate(data, Efficiency = ifelse(mpg > 20, "High", "Low"))

# Define a custom function to categorize cars
car_type <- function(cyl) {
  if(cyl == 4) {
    return("Compact")
  } else if(cyl == 6) {
    return("Midsize")
  } else {
    return("Large")
  }
}

# Apply the custom function to add a new column Car_Type
data <- mutate(data, Car_Type = sapply(cyl, car_type))
 #preparedby your beloved brother wycliffe 

