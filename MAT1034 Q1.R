#Question 1(b)

#creating a function to calculate the volume of a sphere
volume <- function (r) {
  result <- (4/3)*pi*(r^3)
  return(result)
}


#calculating the volumes for each radius
v1 <- volume(1)
v2 <- volume(2)
v3 <- volume(3)
v4 <- volume(4)
v5 <- volume(5)
v6 <- volume(6)


#creating a vector to store those values
volumes <- c(v1,v2,v3,v4,v5,v6)


#creating 10 random samples of the volumes with the given probabilities
n10 <- sample(volumes,
              size=10,
              replace=TRUE,
              prob=c(0.25,0.1,0.3,0.2,0.1,0.05))


#creating 100 random samples of the volumes with the given probabilities
n100 <- sample(volumes,
               size=100,
               replace=TRUE,
               prob=c(0.25,0.1,0.3,0.2,0.1,0.05))


#creating 1000 random samples of the volumes with the given probabilities
n1000 <- sample(volumes,
                size=1000,
                replace=TRUE,
                prob=c(0.25,0.1,0.3,0.2,0.1,0.05))


#finding the expected value of the volumes in each case
s10 <- mean(n10)
s100 <- mean(n100)
s1000 <- mean(n1000)


#printing just to check that the values make sense
print(s10)
print(s100)
print(s1000)


#creating the vectors for insertion of data into the table
trials <- c(10, 100, 1000)
eV <- c(s10, s100, s1000)


#creating the table and assigning the column names
table <- cbind(trials, eV)
colnames(table) <- c("n","E[V]")


#printing the table to the console
print(table)
