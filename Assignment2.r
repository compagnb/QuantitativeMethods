# Barbara Compagnoni
# R Assignment 2

# 1. List the level of measurement for each of the following variables:

# ANSWER
# a. ID - NOMINAL
# b. LOW - NOMINAL
# c. AGE - INTERVAL/RATIO
# d. LWT - INTERVAL/RATIO
# e. RACE - NOMINAL
# f. SMOKE - NOMINAL
# g. PTL - ORDINAL
# h. HT - NOMINAL
# i. UI - NOMINAL
# j. FTV - INTERVAL/RATIO
# k. BWT - INTERVAL/RATIO

# head(lowbwt)
# ID   LOW AGE LWT  RACE SMOKE PTL    HT    UI FTV  BWT
# 1 85 FALSE  19 182 black FALSE   0 FALSE  TRUE   0 2523
# 2 86 FALSE  33 155 other FALSE   0 FALSE FALSE   3 2551
# 3 87 FALSE  20 105 white  TRUE   0 FALSE FALSE   1 2557
# 4 88 FALSE  21 108 white  TRUE   0 FALSE  TRUE   2 2594
# 5 89 FALSE  18 107 white  TRUE   0 FALSE  TRUE   0 2600
# 6 91 FALSE  21 124 other FALSE   0 FALSE FALSE   0 2622


# 2. Show a frequency table and an appropriate graph for the variable Smoking Status During
# Pregnancy.

# ANSWER
# prop.table(table(lowbwt$SMOKE))
#
# FALSE      TRUE
# 0.6084656 0.3915344
# pie(table(lowbwt$SMOKE), main="Smoking Status During Pregnancy", col=c("black", "red"))
# or
# barplot(table(lowbwt$SMOKE), main="Smoking Status During Pregnancy", xlab="Smoking", ylab="frequency")


# 3. Describe the distribution of Smoking Status During Pregnancy.

# ANSWER
# The distribution is negatively skewed.
# summary(lowbwt$SMOKE)
#
# Mode   FALSE    TRUE    NA's
# logical     115      74       0

# 4. Show a frequency table and an appropriate graph for the variable Low Birth Weight.

# ANSWER:
# prop.table(table(lowbwt$LOW))
#
# FALSE      TRUE
# 0.6878307 0.3121693
# pie(table(lowbwt$LOW), main="low birth rates", col=c("black","red"))
# or
# barplot(table(lowbwt$LOW), main="low birth rate data", xlab="Low Birth Rate", ylab="frequency")


# 5. Describe the distribution of Low Birth Weight.

# ANSWER The distribution is a negative skew.
#
# summary(lowbwt$LOW)
# Mode   FALSE    TRUE    NA's
# logical     130      59       0

# 6. Show summary statistics and an appropriate graph for Birth Weight in Grams.

# ANSWER:
# summary(lowbwt$BWT)
#
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
# 709    2414    2977    2945    3475    4990

# 7. Describe the distribution of Birth Weight in Grams.

# ANSWER: Since the Median and Mean are slightly different, and the Mean is slightly lower the distribution has a slight negative skew.

# 8. Show a crosstab of Low Birth Weight BY Smoking Status During Pregnancy.

# ANSWER: prop.table(table(lowbwt$LOW, lowbwt$SMOKE), 2)
#
#         FALSE      TRUE
# FALSE 0.7478261 0.5945946
# TRUE  0.2521739 0.4054054

# 9. Does there appear to be a relationship between Low Birth Weight and Smoking Status During
# Pregnancy? Explain.

# ANSWER: There is a 75% chance of not having a Low Birth Weight when not smoking, while there is a 25% chance of having a Low Birth Weight if yoy are not smoking. If they do smoke there is a 59% chance there will no Low Birth Weight, and a 41% chance there will be a Low Birth Rate. There is an increase in Low Birth Weights if smoking compared to not smoking.
#
# prop.table(table(lowbwt$LOW, lowbwt$SMOKE), 2)
#
#         FALSE      TRUE
# FALSE 0.7478261 0.5945946
# TRUE  0.2521739 0.4054054


