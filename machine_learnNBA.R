#Loading in the library
library(dplyr)
library(ggplot2)
library(tidyr)
library(stringr)
library(data.table)
library(ggrepel)
library(directlabels)
library(gridExtra)
options(max.print = 999999999)
options(scipen=12)

#loading the data 
#set directory 
getwd()
setwd("/users/justinvhuang/desktop/nba_stat_salaries")
getwd()

#loading in the data
#loading in the data
data<-read.csv("2000_2018_nba.csv")
data <- data[,-1]

# looking at the data
glimpse(data)
head(data)
names(data)
summary(data)
str(data)

#Looking at the correlation 
cor(data[, sapply(data, is.numeric)],
    use = "complete.obs", method = "pearson")

#Team wins and salary
ggplot(data,aes(TeamWins,salary)) +
  geom_point() + 
  facet_wrap(~PlayerYear) +
  ggtitle("Scatter Plot of TeamWins predicting Salary")

ggplot(data,aes(TeamWins,salary)) +
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Scatter Plot of TeamWins predicting Salary")
#Taking a look at the data 
data %>% summarize(N =n(), mean(TeamWins), sd(TeamWins), 
                                            mean(salary), sd(salary), cor(TeamWins,salary))

#Lets make a linear model 
lm.win.sal <- lm(salary ~ TeamWins, data = data)
lm.win.sal
summary(lm.win.sal)
coef(summary(lm.win.sal))
anova(lm.win.sal)
SSE0 = sum(lm.win.sal$residuals^2)
SSE0
RMSE0 = sqrt(SSE0/nrow(data))
RMSE0
##Player Year and Team salary

ggplot(data,aes(PlayerYear,tmsalary)) +
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Scatter Plot of Player and Team Salary")
#Taking a look at the data 
data %>% summarize(N =n(), mean(PlayerYear), sd(PlayerYear), 
                   mean(tmsalary), sd(tmsalary), cor(PlayerYear,tmsalary))

#Lets make a linear model 
lm.py.tmsal <- lm(tmsalary ~ PlayerYear, data = data)
lm.py.tmsal
summary(lm.py.tmsal)
coef(summary(lm.py.tmsal))
anova(lm.py.tmsal)
SSE1 = sum(lm.py.tmsal$residuals^2)
SSE1
RMSE1 = sqrt(SSE1/nrow(data))
RMSE1

##team salary and salary cap 
ggplot(data,aes(tmsalary,SalCap)) +
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Scatter Plot of Team Salary and Salary Cap")
#Taking a look at the data 
data %>% summarize(N =n(), mean(tmsalary), sd(tmsalary), 
                   mean(SalCap), sd(SalCap), cor(tmsalary,SalCap))

#Lets make a linear model 
lm.tmsal.salcap <- lm(tmsalary~ SalCap, data = data)
lm.tmsal.salcap
summary(lm.tmsal.salcap)
coef(summary(lm.tmsal.salcap))
anova(lm.tmsal.salcap)
SSE2 = sum(lm.tmsal.salcap$residuals^2)
SSE2
RMSE2 = sqrt(SSE2/nrow(data))
RMSE2
#Lets look at a few of the highest correlations make a multiple linear regression 
#Age, t_reb, TO, PPG, FG, started games, three, two, assist, block,steal,EFG, Num years
cor(data$Age,data$salary)
cor(data$t_reb,data$salary)
cor(data$TO,data$salary)
cor(data$ppg,data$salary)
cor(data$FG,data$salary)
cor(data$started,data$salary)
cor(data$three, data$salary)
cor(data$two, data$salary)
cor(data$assist,data$salary)
cor(data$block, data$salary)
cor(data$steal,data$salary)
cor(data$EFG,data$salary)
cor(data$NumYears,data$salary)

#Lets make a multiple linear regression model
lmodel<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
              started+three+two+assist+block, +steal+EFG +NumYears, data=data)
lmodel
summary(lmodel)
coef(summary(lmodel))
anova(lmodel)
SSE3 = sum(lmodel$residuals^2)
SSE3
RMSE3 = sqrt(SSE3/nrow(data))
RMSE3
#adjusted R squared looks good however we could be dealing with multiple colinieartiy with Age and number of years played
#lets remove the weakest correlation of EFG assists since it did not show significant
#and Age, two and three to see if it improves the model 
lmodel2<- lm(salary~t_reb + TO + ppg+ FG+ 
              started+block, +steal +NumYears, data=data)
lmodel2
summary(lmodel2)
coef(summary(lmodel2))
anova(lmodel2)
SSE4 = sum(lmodel2$residuals^2)
SSE4
RMSE4 = sqrt(SSE4/nrow(data))
RMSE4
#Lets add back in some of the values and just remove the lowest correlation 
lmodel3<- lm(salary~t_reb + TO + ppg+ FG+ Age +
              started+three+two+assist+block, +steal+NumYears, data=data)
lmodel3
summary(lmodel3)
coef(summary(lmodel3))
anova(lmodel3)
SSE5 = sum(lmodel3$residuals^2)
SSE5
RMSE5 = sqrt(SSE5/nrow(data))
RMSE5

#the model improved by removing EFG 
#4 different CBA contracts 3 different regimes 1999-2005 2006-2011 2012-2018

#Lebron James twitter 2010