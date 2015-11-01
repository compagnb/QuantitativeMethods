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

3.a. LOW (0 = Birth Weight >= 2500g, 1 = Birth Weight < 2500g, can be ordinal through frequency table) is Dependant, Smoke (yes/no, nominal) is Independent.
3.b. t.test(LOW~SMOKE, lowbwt)
3.c. data:  LOW by SMOKE
      t = -2.1766, df = 141.69, p-value = 0.03117
      alternative hypothesis: true difference in means is not equal to 0
      95 percent confidence interval:
      -0.29240371 -0.01405928
      sample estimates:
      mean in group FALSE  mean in group TRUE
      0.2521739           0.4054054
3.d. There was a significant effect for Smoking during pregnancy, t(141.69) = -2.1766, p = 0.03117 with no 25% of low birthweights occuring when mother's don't smoke and 40% happening when mother's do smoke during pregnancy.
3.e. The t score is -2.1766. The p value is  0.03117 Since the p value is less then .5 (95% test) the results are significant.

4.b. Recode the independent variable into a nominal or ordinal variable.





