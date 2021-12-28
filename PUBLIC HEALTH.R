# US Public Health 
#install packages 
install.packages("foregin")
install.packages("ggplot2")
install.packages("MASS")
install.packages("Hmisc")
install.packages("reshape2")
install.packages("plyr")
install.packages("car")

#call packages 
library(foreign)
library(ggplot2)
library(MASS)
library(Hmisc)
library(reshape2)
library(plyr)
library(car)

#load the data set
library(readr)
X1920_2021 <- read_csv("~/Desktop/1920-2021.csv")
View(X1920_2021)

#RUN OLS REGRESSION 
model <- glm(YEAR ~ MARR + INFANT_MOR + BIRTH_NUM + CRUDE_BIR_NUM + FERTILITY + GDP+ DIV + AVG_LIFE + FEM_LABOR + SEC_EDU + LIFE_YEARS + DEATH_RATE, data = X1920_2021)
summary(model)

# Scatter plot matrix for topic areas
scatterplotMatrix(~ YEAR + MARR + DIV, data = X1920_2021)
scatterplotMatrix(~ YEAR + INFANT_MOR + BIRTH_NUM + CRUDE_BIR_NUM + FERTILITY, data = X1920_2021)
scatterplotMatrix(~ YEAR + GDP + SEC_EDU, data = X1920_2021)
scatterplotMatrix(~ YEAR + AVG_LIFE + LIFE_YEARS + DEATH_RATE, data = X1920_2021)

#scatterplots 
scatterplot(YEAR ~  DIV, data = X1920_2021)
scatterplot(YEAR ~ MARR, data = X1920_2021)
scatterplot(YEAR ~  INFANT_MOR, data = X1920_2021)
scatterplot(YEAR ~ BIRTH_NUM, data = X1920_2021)
scatterplot(YEAR ~  FERTILITY, data = X1920_2021)
scatterplot(YEAR ~ GDP, data = X1920_2021)
scatterplot(YEAR ~ AVG_LIFE, data = X1920_2021)
scatterplot(YEAR ~  FEM_LABOR, data = X1920_2021)
scatterplot(YEAR ~ SEC_EDU, data = X1920_2021)
scatterplot(YEAR ~ LIFE_YEARS, data = X1920_2021)
scatterplot(YEAR ~ DEATH_RATE, data = X1920_2021)
