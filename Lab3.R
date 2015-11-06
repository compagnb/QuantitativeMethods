
summary(country$physicians)

hist(country$physicians)

quantile(country$physicians, seq(0, 1, 0.1), na.rm=TRUE)

quantile(country$physicians, seq(0, 1, 0.25), na.rm=TRUE)

#create ordinal variable physiciansCat
country$physiciansCat[country$physicians <= 25] <- 1
country$physiciansCat[country$physicians > 25 & country$physicians <= 100] <- 2
country$physiciansCat[country$physicians > 100 & country$physicians <= 250] <- 3
country$physiciansCat[country$physicians > 250] <- 4

country$physiciansCat <- factor(country$physiciansCat, labels=c('0-25 physicians per 100k', '26-100 physicians per 100k', '101-250 physicians per 100k', '>250 physicians per 100k'))
