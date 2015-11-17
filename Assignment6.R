# Assignment 6
# Barbara Compagnoni

#1 A. SMOKE is nominal and the dependant variable, RACE is also nominal and an independant variable. This will require a Chi Square.
#1 B.  > summary(lowbwt$SMOKE)
        Mode   FALSE    TRUE    NA's
        logical     115      74       0

      > summary(lowbwt$RACE)
        white black other
        96    26    67

#1 C. > table(lowbwt$SMOKE, lowbwt$RACE)

        white black other
        FALSE    44    16    55
        TRUE     52    10    12

      > prop.table(table(lowbwt$SMOKE, lowbwt$RACE), 2)

        white     black     other
        FALSE 0.4583333 0.6153846 0.8208955
        TRUE  0.5416667 0.3846154 0.1791045

      > chisq.test(table(lowbwt$SMOKE, lowbwt$RACE), correct=FALSE)

        Pearson's Chi-squared test

        data:  table(lowbwt$SMOKE, lowbwt$RACE)
        X-squared = 21.779, df = 2, p-value = 1.865e-05

#1 D. The percentage of persons below the smoking while pregnant varied by race. X2(2, N = 189) = 21.779, p < .001

#1 E. The p-value is greater than 0.05, so we will fail to reject the null hypothesis, and there is no statistically significant difference..

#2. c. Recode both the dependent and independent variables into nominal or ordinal variables.
