#HW1 part two
df = read.csv('wb_dev_ind.csv')
summary(df)
str(df)
sd(df$gdp_per_capita, na.rm = TRUE)
sd(df$literacy_all, na.rm = TRUE)
sd(df$infant_mortality, na.rm = TRUE)
summary(df)
100-78.54
tail(sort(df$gdp_per_capita), 50)
top50 = subset(df, gdp_per_capita > 15368)
summary(top50)
str(top50$gdp_per_capita)
100-90.3
100-95.81
100-99.7
head(sort(df$gdp_per_capita), 50)
bottom50 = subset(df, gdp_per_capita < 1113)
summary(bottom50)
str(bottom50$gdp_per_capita)
100-59.41
100-15.46
100-99.74
summary(top50)
summary(bottom50)
summary(df)
plot( df$gdp_per_capita, df$infant_mortality)
summary(df)
fit <- lm(infant_mortality ~ gdp_per_capita, data=df)
fit
summary(fit)
fit2 <- lm(literacy_all ~ gdp_per_capita, data = df)
summary(fit2)
illiteracy_all = numeric(nrow(df))
df$illiteracy_all = illiteracy_all
df$illiteracy_all = 100 - df$literacy_all

fit3 <- lm(illiteracy_all ~ gdp_per_capita, data=df)
summary(df)
summary(fit3)

fit4 <- lm(infant_mortality ~ illiteracy_all, data=df)
summary(fit4)

plot(df$gdp_per_capita,df$infant_mortality)
summary(fit4)
abline(fit4)
