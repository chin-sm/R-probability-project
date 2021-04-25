#Question 3

#read data from csv file
HIData <- read.csv("D:\\Documents\\R\\Introduction to Probability Assignment\\Dataset for Question 3\\Question 3.csv")


#counts the number of employees in the data frame by counting the number of rows
numberOfEmployees <- nrow(HIData)
numberOfEmployees


#creates a subset of the data frame of staff who did not opt for any additional coverage
noAddCover <- subset(HIData, (HIData$Mental.illness == "No") & (HIData$Stroke == "No") & (HIData$Cancer == "No"))


#counts the number of employees who did not opt for any additional coverage by counting the number of rows in the new data frame
noACEmployees <- nrow(noAddCover)
noACEmployees


#calculates the probability of a randomly chosen staff not choosing to have any additional benefits by using the basic principle of P(A) = n/N
prob = noACEmployees/numberOfEmployees
prob


#prints out a concluding sentence
sprintf("%g employees opted for no additional coverage out of a total of %g employees. The probability that a randomly chosen staff will opt for none of the additional coverages is %.4f", noACEmployees, numberOfEmployees, prob)



#you don't have to create a subset or use nrows for the second part if you do this:
#noAddCover <- sum((HIData$Mental.illness == "No") & (HIData$Stroke == "No") & (HIData$Cancer == "No"))