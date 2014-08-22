# ex.chart.r -------------------------------
data <- read.delim(file = "./data/LungCapDataTAB.csv", header = T)
data

# barplot ---------------------------------

help(barplot)
attach(data)

count <- table(Gender)
percent <- table(Gender)/725
barplot(count)
barplot(percent)
barplot(percent, main="TITLE", xlab="Gender", ylab="%", las=1, names.arg=c("Female", "Male"))
barplot(percent, main="TITLE", xlab="Gender", ylab="%", las=1, names.arg=c("Female", "Male"), horiz=TRUE)

# piechart -------------------------------

pie(count, main="TITLE Here")
box() # drawing box


# boxplot --------------------------------

boxplot(LungCap~Gender, main="TITLE", ylabel="Lung Capacity", ylim=c(0, 16), las=1)


# Histogram ------------------------------

hist(LungCap, prob=T, ylim=c(0,0.2), breaks=7, main="Histogram of LungCap", xlab="Lung Capacity", las=1)
lines(density(LungCap), col=2, lwd=3)


# Stem plot ------------------------------

femaleLungCap <- LungCap[Gender=="female"]
stem(femaleLungCap, scale=1)


# Stacked Bar Charts,Clustered Bar Charts and Mosaic Plots -----

tbl01 <- table(Smoke, Gender)
barplot(tbl01, beside = T, legend.text =c("Non-Smoke", "Smoke"), main="Gender and Smoking", xlab="Gender", las=1, col=c(5,6) )

















