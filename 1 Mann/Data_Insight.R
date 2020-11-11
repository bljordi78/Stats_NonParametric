# Set the working directory
setwd("C:\\Users\\jordi\\Documents\\_DATA ANALYTICS\\1 Advanced Business Data Analysis\\CA2 Stats")

# Read in data file 
Foot_Journey <- read.csv(file="Foot_Journey.csv", head=TRUE, sep=",")

# Display the data file
View(Foot_Journey)

# Structure of the file
str(Foot_Journey)

# Sample with first lines
head(Foot_Journey)

# Summary of the file
summary(Foot_Journey)

# Set a variable for each group of study
SE <- subset(Foot_Journey, NUTS_II == 'SE')
BMW <- subset(Foot_Journey, NUTS_II == 'BMW')

# Histograms
hist(SE$Foot)
hist(BMW$Foot)

# QQ Plots
qqnorm(SE$Foot, main = "QQ Plot showing SE region")
qqline(SE$Foot)
qqnorm(BMW$Foot, main = "QQ Plot showing BMW region")
qqline(BMW$Foot)

# Boxplots
boxplot(SE$Foot, col = rgb(0,0,1,0.5), main = "Boxplot showing SE population")
boxplot(BMW$Foot, col = rgb(0,0,1,0.5), main = "Boxplot showing BMW population")

# Kolmogorov-Smirnov test for normality
ks.test(SE$Foot, BMW$Foot)


# Mann-Whitney U test to compare non normal populations
wilcox.test(SE$Foot, BMW$Foot)
