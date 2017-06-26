#HW3
install.packages("dummies")
install.packages("AER")

library(dummies)
library(AER)

inpres = read.csv('inpres_data.csv')
summary(inpres)
str(inpres)
plot(inpres$education, inpres$log_wage)

model1 = glm(log_wage ~ education, data = inpres)
summary(model1)

inpres$treated = ifelse(inpres$birth_year >= 68, 1, 0)
summary(inpres)
