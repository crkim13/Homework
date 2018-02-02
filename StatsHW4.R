df <-read.csv(file="~/MSDS6371/Logging.csv", header = TRUE, sep = ",")
df
#extract percent lost logged data into dataframe
logdf <- subset(df, Action == "L")
#extract percent lost unlogged data into dataframe
unlogdf <- subset(df, Action == "U")
#create vectors for logged and unlogged data
logged <- c(logdf$PercentLost)
unlogged <- c(unlogdf$PercentLost)

wilcox.test(logged, unlogged, correct=TRUE)

#Wilcoxon One-sided rank sum test with C.C.
wilcox.test(unlogged,logged, paired=FALSE, alternative = "less", correct=TRUE)
#Wilcoxon to get the 95% CI
wilcox.test(unlogged,logged, paired=FALSE, correct=TRUE, conf.int=TRUE)

#read EducationData.csv
df <- read.csv(file = "~/MSDS6371/EducationData.csv", header = TRUE, sep = ",")
head(df)

#sortdf
attach(df)
dfsort <- df[order(-Educ, Subject ),]
head(dfsort)
#Welch's t-test in R

t.test(Income2005 ~ Educ, data = dfsort, alternative="greater", var.equal = FALSE, paired=FALSE, conf.level = .95,)


