#Question 4(b)


#creating a matrix with the frequencies as given in the question
studTable <- matrix(c(12,25,8,2,5,8), ncol=3, byrow=TRUE)


#giving column names
colnames(studTable) <- c(1, 2, 3)


#giving row names
rownames(studTable) <- c("Full time", "Part time")


#saving the table as a data frame
studTable <- as.data.frame(studTable)


#printing the data to check
studTable


#turning the data frame of frequencies to a data frame of probabilities
df <- studTable/sum(studTable)


#printing the table of probabilities to check
df


#creating a vector with elements to represent the full time and part time students together with the number of times they attended the tutoring session in the last week
stud <- c("FT1", "FT2", "FT3", "PT1", "PT2", "PT3")


#generates a random sample of size 10000 and stores it in another vector 
data <- sample(stud, # tells us to sample the stud vector
               size = 10000, #number of repetitions
               replace = TRUE, #sampling is done with replacement
               prob = c(df[1,1], df[1,2], df[1,3], df[2,1], df[2,2], df[2,3])) #assigns the probability to each occurrence based on the probability data frame created earlier 


#gets the total number of full time students from the random sample
totalFT <- sum(data == "FT1" | data == "FT2" | data == "FT3")


#checks the total number of full time students
totalFT


#gets the total number of full time students who went for the tutoring class twice last week from the random sample
totalFT2 <- sum(data == "FT2")


#checks the total number of full time students who went for the tutoring class twice last week from the random sample
totalFT2


#calculates the probability that the student visited the tutoring session two times given that the student is full time
prob <- totalFT2/totalFT


#displays the probability
prob