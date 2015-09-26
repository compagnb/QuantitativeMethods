# Barbara Compagnoni
# R Lab 2

# appropriate for nominal or ordinal variables with only a few value
pie(table(lowbwt$RACE), main="low birth rates", col=c("red", "blue", "green"))
barplot(table(lowbwt$RACE), main="low birth rates", xlab="mothers age", ylab="frequency")

# use for interval ratio values that have few values
hist(lowbwt$AGE)
summary(lowbwt$AGE)

#comparing -- displays the joint frequency distributions of two nominal or ordinal variables. Crosstabs can help show whether there is a relationship between two nominal or ordinal variables
table(lowbwt$HT, lowbwt$RACE)
prop.table(table(lowbwt$HT, lowbwt$RACE)) # cell percentages
prop.table(table(lowbwt$HT, lowbwt$RACE), 2) # column percentages
