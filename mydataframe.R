# Declare a variable to store the data set
captaincy <- read.csv("CaptaincyData.csv") 

# View the stored data set 
View(captaincy)
#access row
captaincy[3,]
#access column
captaincy[3]
#access second and third rows 
#concatenated second and third row
captaincy[c(2,3),]
#25 matches in played column
#logical indexing
captaincy[captaincy$played==25,]
#get values of any attribute of all players
#know values in first column
captaincy[1]
#name indexing
captaincy["names"]
captaincy[c("names","won")]
#create a subset of captains who have 
#won 30% of the matches
#slicing dataframe
subData <- subset(captaincy,victory>0.3,select=c("names","played","won"))
print(subData)
#how to extract a particular entry of some column in df
#column,row
captaincy[[4]][3]
#subset of captains who have played >20 matches and lost < 14 matches
#and lost < 14 matches
subData2 <- subset(captaincy,played > 20, lost < 14, select = c("names"))
print(subData2)
