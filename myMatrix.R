# Clear R workspace
rm(list = ls() ) 
#clears older data
# Declare a variable to store the data frame
captaincy = read.csv("CaptaincyData.csv")

# View the stored data frame
View(captaincy)
#create matrix
subdata <- captaincy[1:3,c("played","won","lost")]
matrixA <- as.matrix(subdata)
print(matrixA)

#three by three identity matrix
values <- c(1,0,0,0,1,0,0,0,1)
matrixB <- matrix(values,nrow=3,ncol=3,byrow=TRUE)
print(matrixB)

matrixA + matrixB
matrixA - matrixB
# Multiply two matrices in element wise format 

matrixA * matrixB
# Multiply two matrices in actual matrix multiplication format 

matrixA %*% matrixB

#transpose and determinant
t(matrixA)
det(matrixA)

vectorA <- c(9,10,11,12)
vectorB <- c(13,14,15,16)
vectorC <- c(vectorA,vectorB)
vectorC

matrixC <- matrix(vectorC,nrow=2,ncol=4,byrow=TRUE)
print(matrixC)

solve(matrixA)
# calculate sum using for loop
#record present time
startTime <- Sys.time()
#find absolute data and time value in current time
totalSum <- 0
for(i in 1:3){
  for(j in 1:3){
    totalSum <- totalSum+matrixA[i,j]
  }
}
print(totalSum)
endTime <- Sys.time()
endTime - startTime

#sum of all elements in matrixA
#calculating sum using inbuilt function
startTime <- Sys.time()
sum(matrixA)
endTime <- Sys.time()
endTime - startTime
#advisable to use inbuilt functions of R

#sum of each row  
rowSums(matrixA)
#sum of each column
colSums(matrixA)
captaincy <- rbind(captaincy,
                   data.frame(names="Kohil",
                                        Y=2016,played=30,won=20,
                                        lost=9,victory=20/30))
View(captaincy)
defeat <- captaincy$lost/captaincy$played
captaincy <- cbind(captaincy,defeat)
View(captaincy)



vectorA <- c(9,10,11,12)
vectorB <- c(13,14,15,16)
vectorC <- c(vectorA,vectorB)
vectorC

matrixC <- matrix(vectorC,nrow=4,ncol=2,byrow=TRUE)
print(matrixC)
vectorD <- c(17,18,19,20)
matrixC <- cbind(matrixC,vectorD)
print(matrixC)