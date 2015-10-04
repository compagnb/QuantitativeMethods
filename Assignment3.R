# Barbara Compagnoni
# R Assignment 2

# 1. List the level of measurement for each of the following variables:
# a. LOW - NOMINAL
# b. AGE - INTERVAL/RATIO

# 2. Why is it NOT appropriate to create a crosstab using the two variables in the previous question?
# A crosstab displays the joint frequency distributions of two nominal or ordinal variables. Since Age is interval/ratio it can be broken down to infinite levels, it cannot offer the simplified data categorical and nominal variables offer.

# 3. Recode the variable AGE into a new ordinal variable.
# lowbwt$ageCat[lowbwt$AGE <= 15] <- 1
# lowbwt$ageCat[lowbwt$AGE > 15 & lowbwt$AGE <= 25] <- 2
# lowbwt$ageCat[lowbwt$AGE > 25 & lowbwt$AGE <= 35] <- 3
# lowbwt$ageCat[lowbwt$AGE > 35] <- 4
# lowbwt$ageCat <- factor(lowbwt$ageCat, labels=c('mother under 15 yrs of age', 'mother 15-25 yrs of age', 'mother 25-35 yrs of agek', 'mother over 35 yrs of age'))


# > summary(lowbwt$AGE)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
# 14.00   19.00   23.00   23.24   26.00   45.00
# > hist(lowbwt$AGE)
# > quantile(lowbwt$AGE, seq(0, 1, 0.1), na.rm=TRUE)
# 0%  10%  20%  30%  40%  50%  60%  70%  80%  90% 100%
# 14   17   19   20   21   23   24   25   28   31   45
# >lowbwt$ageCat[lowbwt$AGE <= 15] <- 1
# lowbwt$ageCat[lowbwt$AGE > 15 & lowbwt$AGE <= 25] <- 2
# lowbwt$ageCat[lowbwt$AGE > 25 & lowbwt$AGE <= 35] <- 3
# lowbwt$ageCat[lowbwt$AGE > 35] <- 4
#
# >lowbwt$ageCat <- factor(lowbwt$ageCat, labels=c('mother under 15 yrs of age', 'mother 15-25 yrs of age', 'mother 25-35 yrs of agek', 'mother over 35 yrs of age'))

# 4. Show a frequency table of the new ordinal age variable (that you created in #3) and explain your coding scheme.
# table(lowbwt$LOW, lowbwt$ageCat, dnn=c("low birth weight", "mothers age in years"))
# The interval/ratio variable of age was evaluated and put into 10 year ranges.

# 5. Show a crosstab of Low Birth Weight BY Age of Mother, making sure to use variables at the appropriate levels of measurement.
# prop.table(table(lowbwt$LOW, lowbwt$ageCat, dnn=c("low birth weight", "mothers age in years")), 2)

# 6. Does there appear to be a relationship between Low Birth Weight and Age of Mother? Explain.
# There is 66% chance of having a child with low birth weight at the age 15 or younger, 33% from 15-25, and 25% from 25-35 and none if the mother was over 35 years of age. One can assume that the older the mother is the smaller change of having a child with low birth weight.

# > prop.table(table(lowbwt$LOW, lowbwt$ageCat, dnn=c("low birth weight", "mothers age in years")), 2)
# mothers age in years
# low birth weight mother under 15 yrs of age mother 15-25 yrs of age mother 25-35 yrs of agek
# FALSE                  0.3333333               0.6744186                0.7450980
# TRUE                   0.6666667               0.3255814                0.2549020
# mothers age in years
# low birth weight mother over 35 yrs of age
# FALSE                 1.0000000
# TRUE                  0.0000000
