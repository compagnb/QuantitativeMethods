# Lab4

t.test(TRUNOUT~REGION, states)

summary(states$TURNOUT)
summary(states$REGION)

#create a subset of data where you are focusiing on TWO groups of a given variable
states.subset <- states[states$REGION %in% c("Northeast", "West"), ]

#look at turnout means of subset by region
aggregate(TURNOUT~REGION, states.subset, mean)

#run the t test! dependant (outcome) followed by independant (condition)
#df is degrees of freedom just sounds sexy!!!
t.test(TURNOUT~REGION, states.subset)
