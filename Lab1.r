# Barbara Compagnoni
# Notes and Practice

# nrow counts the number of observationsin the data set.
nrow(states)

# head returns the raw values for the first few rows in a data set
head(states)

# summary summarizes every variable in a data set
summary(states)

# summary can be used summarize a specific variable in a data frame
summary(states$URBAN)

# summary can changes depending on the level of measurement
summary(states$REGION)

# colnames returns the names of the variables in the data frame
colnames(states)

# class returns the class of a specific variable
class(states$REGION)

# get mode is tricky use this method
getmode(states$REGION)

# table function generates a frequency table
table(states$REGION)

# prop.table can be nested around the table function to get the proportions of the frequencies
prop.table(table(states$REGION))

# freqtable was written to show even more detail
freqtable(states$REGION)
# Output:
# states$REGION Freq ValidProp Proportion
# Midwest 12 0.24 0.24
# Northeast 11 0.22 0.22
# South 14 0.28 0.28
# West 13 0.26 0.26
# N 50 1.00 1.00
# NA / missing 0 NA 0.00
# Total 50 NA 1.00

# summary gives information about a distribution: the mean, median, quartiles, min, and max:
summary(states$DENSITY)

# range give you the min and max:
range(states$DENSITY)

# range as it’s defined in the textbook, you have to subtract the min from the max:
max(states$DENSITY) - min(states$DENSITY)

# var returns the variance:
var(states$DENSITY)

# sd function returns the standard deviation:
sd(states$DENSITY)

# standard deviation squared
sd(states$DENSITY) ^ 2

# square root of the variance
sqrt(var(states$DENSITY))

# IQR returns the interquartile range: the difference between the upper and lower quartiles:
IQR(states$DENSITY)

# to get value of a specific percentile, use the quantile function (60th percentile)
quantile(states$DENSITY, 0.60, na.rm=TRUE)

# quantile with the seq function to get the percentiles of a sequence (such as deciles):
quantile(states$DENSITY, seq(0, 1, 0.1))


#Practice
#1. What is the average number of doctors per 100,000 population? ANS 228.9
summary(states$DOCTORS)

#2. What is the maximum number of doctors per 100,000 population? ANS 416.8584
max(states$DOCTORS)

#3. How does the percentage of those with a high school degree vary across the U.S.? ANS 15.6798
var(states$HSGRAD)

#4. What are the quantiles for birth rate?
quantile(states$BRATE, seq(0, 1, 0.1))

#ANS
# 0%      10%      20%      30%      40%      50%      60%      70%      80%
# 10.79999 12.19998 13.07998 13.69998 14.00000 14.19998 14.57999 14.89999 15.63998
# 90%     100%
#   16.04000 21.89996

#5. What is the median poverty rate? ANS 10.550
summary(states$POVERTY)

#6. Is there skew in poverty rate? ANS No

#7. How many states are in the Midwest? ANS 12
table(states$REGION)



