
# File ------------------------------------------


# Importing file ------------------------------------------

data1 <- read.csv(file = "./data//LungCapDataCSV.csv", header = T)
data1

data2 <- read.delim(file = "./data/LungCapDataTAB.csv", header = T)
data2

data3 <- read.table(file = "./data/LungCapDataCSV.csv", header = T, sep = ",")
data3

data4 <- read.table(file = "./data/LungCapDataTAB.csv", header = T, sep = "\t")
data4


# Working with data ------------------------------------------

rm(data1) # Remove objects from specified environment
dim(data2) # Dimensions of an object
head(data2) # Return the first part of an object
tail(data2) # Return the last part of an object
data3[c(5,6,7,8,9),] # choose row
data3[5:9,] # chosse continuous row
names(data3) # The names of an object


# Variables and Data ------------------------------------------

mean(data2$Age) # mean
attach(data2) # attach data in environment
mean(Age)
class(LungCap) # class of data type
class(Age)
class(Height)
class(Smoke)
class(Gender)
class(Caesarean)
levels(Smoke) # Levels attributes
summary(data2) # summary of data

x <- c(0,1,1,0,0,0,1,1,1)
class(x)
x <- as.factor(x) # Change class
class(x)
summary(x)

# Logic Statements ------------------------------------------

mean(Age[Gender=="female"]) # 
mean(Age[Gender=="male"]) # 

femData <- data2[Gender=="female", ]
maleData <- data2[Gender=="male", ]
dim(femData)
dim(maleData)

maleOver15 <- data2[Gender=="male" & Age>15,  ]
dim(maleOver15)

# cbind, rbind command ------------------------------------------

Age[1:5]
temp <- Age>15
temp[1:5]

temp2 <- as.numeric(Age>15)
temp2[1:5]
femSmoke <- Gender=="female" & Smoke=="yes"
femSmoke[1:5]
moreData <- cbind(data2, femSmoke) # Combine object by rows or columns
moreData[1:5,]
# rm(list=ls()) # clean global environment
