# Barbara Compagnoni
# Data frame for this assignment: country

#1. List the level of measurement for each of the following variables:
# a. country, b. hdirank, c. hdicat, d. pop2004, e. URBAN, f. physicians, g. mort2004, h. tele2004, i. cell2003, j. internet03, k. gdp, l. inequality, m. educ04, n. milit2004, o. debt04, p. cde2003, q. lifef, r. lifem
head(country) # will give a sampling of each title with data

# ANSWER:
# country is NOMINALdata:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAJCAYAAADgkQYQAAAAMElEQVR42mNgIAXY2Nj8x8cHC8AwMl9XVxe3QqwKcJmIVwFWhehW4LQSXQCnm3ABAHD6MDrmRgfrAAAAAElFTkSuQmCC
# hdirank is ORDINAL # Corrected
# hdicat is ORDINAL
# pop2004 is INTERVAL/RATIO
# urban is INTERVAL/RATIO
# physicians is INTERVAL/RATIO
# mort2004 is INTERVAL/RATIO
# tele2004 is INTERVAL/RATIO
# cell2003 is INTERVAL/RATIO
# isnternet03 is INTERVAL/RATIO
# gdp is INTERVAL/RATIO
# inequality is INTERVAL/RATIO
# educ04 is INTERVAL/RATIO
# milit2004 is INTERVAL/RATIO
# debt04 is INTERVAL/RATIO  # Corrected
# cde2003 is INTERVAL/RATIO
# lifef is INTERVAL/RATIO
# lifem is INTERVAL/RATIO

#2. What is the average infant mortality rate (per 1,000 births) in 2004?
summary(country$mort2004)

# ANSWER: 41.74
#
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
#    2.00   10.00   24.50   41.74   68.00  165.00       1

#3. What is the maximum infant mortality rate (per 1,000 births) in 2004?
max(country$mort2004, na.rm=T)

# ANSWER: 165
#
#[1] 165

# 4. What is the median for cell phones per 1,000 people in 2003?
summary(country$cell2003)

# ANSWER: 289.0
#
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's
#     2.0    77.0   289.0   386.8   652.0  1184.0      34

# 5. What is the 95th percentile for cell phones per 1,000 people in 2003?
quantile(country$cell2003, 0.95, na.rm=TRUE)

# ANSWER: 996.2
#
# 95%
# 996.2

# 6. Compare the median and 95th percentile for cell phones per 1,000 people in 2003. What does this comparison tell you about the distribution of this variable?
summary(country$cell2003)
quantile(country$cell2003, 0.95, na.rm=TRUE)

# ANSWER: Positively skewed. #Corrected

# 7. Describe hdicat. Use descriptive statistics, if appropriate. ANS 'HDI Category'
prop.table(table(country$hdicat))

# These are ordinal variables to reduce data into groups(ranges), High Development, Medium Development, Low Development.
#
# High Development    Low Development Medium Development
# 0.3220339          0.1807910          0.4971751

# 8. Describe hdirank. Use descriptive statistics, if appropriate. ANS 'HDI Rank'
prop.table(table(country$hdirank))

# ANSWER: These variables are ordinal because it tells you its higher or lower in much more detail but no information other then that. #Corrected
#
# 1           2           3           4           5           6           7           8           9
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 10          11          12          13          14          15          16          17          18
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 19          20          21          22          23          24          25          26          27
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 28          29          30          31          32          33          34          35          36
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 37          38          39          40          41          42          43          44          45
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 46          47          48          49          50          51          52          53          54
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 55          56          57          58          59          60          61          62          63
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 64          65          66          67          68          69          70          71          72
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 73          74          75          76          77          78          79          80          81
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 82          83          84          85          86          87          88          89          90
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 91          92          93          94          95          96          97          98          99
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 100         101         102         103         104         105         106         107         108
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 109         110         111         112         113         114         115         116         117
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 118         119         120         121         122         123         124         125         126
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 127         128         129         130         131         132         133         134         135
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 136         137         138         139         140         141         142         143         144
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 145         146         147         148         149         150         151         152         153
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 154         155         156         157         158         159         160         161         162
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 163         164         165         166         167         168         169         170         171
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718
# 172         173         174         175         176         177
# 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718 0.005649718

# 9. Did you describe hdicat and hdirank differently? Why or why not? What does each description tell you? How do these variables relate to each other?

# hdicat and hdirank similar because based on human development, and are ordinal. They differ in detail of the data, one is reduced into three categories, the other is just numerical.

# 10. Why is it important to use Frequency Tables for nominal and ordinal variables and other descriptive statistics for interval- ratio variables?

# ANSWER: Frequency tables provide a really quick look at the distribution of the data, but in the other you arent using alot of the data you being provided with.
