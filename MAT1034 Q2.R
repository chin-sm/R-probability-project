#Question 2(b)

#reads data from the csv file
Sdata <- read.csv("D:\\Documents\\R\\Introduction to Probability Assignment\\Dataset for Question 2\\Salaries.csv")

#the continuous random variable chosen is salary
summary(Sdata$salary)



#Question 2(c)
sd(Sdata$salary)



#Question 2(d)
hist(Sdata$salary,
     main = "Histogram of Salary of 397 Professors Over 9 Months from 2008 - 2009",
     xlab = "Salary($)",
     xlim = c(50000, 250000),
     ylab = "Density",
     ylim = c(0, 0.00002),
     prob = TRUE,
     breaks = 20,
     col = "lightseagreen",
     border = "midnightblue")
lines(density(Sdata$salary), 
      col = "blue",
      lwd = 2)



