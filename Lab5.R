# Lab 5

#step 1
summary(states$POVERTY)
summary(states$REGION)

# step 2
aggregate(POVERTY~REGION, states, mean)

# step 3 put result in this variable
anova.results <- aov(POVERTY~REGION, states)

# step 4 run summary function on results
summary(anova.results)

# how to interpret
# if the PR(>F) is less then .05 then there is significant difference and requires further testing to find out which group is significant

