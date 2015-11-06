# Assignment 5
# Barbara Compagnoni

1.
a. BECK - 'Beck depression score at admission', Dependent, interval/ratio, and IVHX - 'IV drug use history at admission', Independent, nominal
b.  summary(drugtreatment$BECK)
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
    0.00   10.00   17.00   17.37   23.00   54.00
    summary(drugtreatment$IVHX)
    never previous   recent
    223      109      243
c.  aggregate(BECK~IVHX, drugtreatment, mean)
    IVHX     BECK
    1    never 15.94996
    2 previous 16.64201
    3   recent 18.99363
    anova.results <- aov(BECK~IVHX, drugtreatment)
    summary(anova.results)
                  Df Sum Sq Mean Sq F value Pr(>F)
    IVHX          2   1148   574.0   6.721 0.0013 **
    Residuals   572  48850    85.4
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

d. We examined depression score at admission by drug use history. There was a significant main effect of drug use history F(2,572) = 6.721, p < 0.0013.
The highest level of depression is recent, and the lowest is never.

e. The difference is statistically significant. The value of Pr(>F) is smaller than alpha, and the null
hypothesis is rejected because there is a difference among the three populations. While there is a statistically significant difference drug use may not be the only factor in play, more investigation is needed.


2. b. Recode the independent variable into a nominal or ordinal variable.

