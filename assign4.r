

# Barbara Compagnoni
# Assignment 4


1.a. LOW - Nominal/Ordinal
1.b. AGE - Ratio/Interval
1.c. the new categorical AGE - Ordinal

2.a. AGE (interval/ratio) is Dependant, LOW (Nominal/Ordinal) is Independent
2.b. t.test(AGE~LOW, lowbwt)
2.c. Welch Two Sample t-test
      data:  AGE by LOW
      t = 1.7737, df = 136.94, p-value = 0.07834
      alternative hypothesis: true difference in means is not equal to 0
      95 percent confidence interval:
      -0.1558349  2.8687423
      sample estimates:
      mean in group FALSE  mean in group TRUE
           23.66154            22.30508
2.d. There was not a significant effect for LOW birthweight, t(136.94) = 1.7737, p = 0.07834 with no low birthweights and low birthweights only small difference.
2.e. The t score is 1.7737. The p value is  0.07834. Since the p value is not less then .5 (95% test) the results are not significant.

3.a. BWT (is birth weight in grams, interval/ratio) is Dependant, Smoke (yes/no, nominal) is Independent.
3.b. t.test(BWT~SMOKE, lowbwt)
3.c. data:  BWT by SMOKE
      t = 2.7095, df = 170, p-value = 0.00743
      alternative hypothesis: true difference in means is not equal to 0
      95 percent confidence interval:
      76.46677 486.95979
      sample estimates:
      mean in group FALSE  mean in group TRUE 
           3054.957            2773.243 
3.d. There was a significant effect for Smoking during pregnancy, t(170) = 2.7095, p = 0.00743 with a mean of 3054.957 for women who dont smoke and a mean of 2773.243 for women who do. 
3.e. The t score is 2.7095. The p value is  0.00743 Since the p value is less then .5 (95% test) the results are significant.

4.b. Recode the independent variable into a nominal or ordinal variable.




