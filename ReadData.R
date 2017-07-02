#removing NA


library(readr)
olympic2<-read_csv("C:/Users/Acer/Desktop/Data Science/Acadgild/ReadData/olympic2.csv")

olympic2<-na.omit(olympic2)

#Using dplyr operation we group the data according to athlete and calc combined total medals earned by Athlete
Swimrankboard<-olympic2 %>% select(Athlete,Sport,Country,Total_Medals)%>%filter(Sport=='Swimming')%>%group_by(Athlete)%>%summarise(sum=sum(Total_Medals))
Simrank<-data.frame(Swimrankboard)

names(Simrank)<-c("Athlete","NoofMedals")
#Sorts the swimmers in ascending order of the total medals
Simrank<-Simrank[order(Simrank[,2]),]
Simrank

Simrank<-Simrank[order(Simrank[,2
                           ],decreasing=TRUE),]

cyclerankboard<-olympic2 %>% select(Athlete,Sport,Country,Total_Medals)%>%filter(Sport=='Cycling')%>%group_by(Athlete)%>%summarise(sum=sum(Total_Medals))
cycrank<-data.frame(cyclerankboard)


names(cycrank)<-c("Athlete","NoofMedals")
#Sorts the cyclists in ascending order of the total medals
cycrank<-cycrank[order(cycrank[,2]),]


#Sorts the cyclists in descending order of the total medals

cycrank<-cycrank[order(cycrank[,2
                      ],decreasing=TRUE),]


runrankboard<-olympic2 %>% select(Athlete,Sport,Country,Total_Medals)%>%filter(Sport=='Running')%>%group_by(Athlete)%>%summarise(sum=sum(Total_Medals))
runrank<-data.frame(runrankboard)


names(runrank)<-c("Athlete","NoofMedals")
#Sorts the runners in ascending order of the total medals
runrank<-runrank[order(runrank[,2]),]


#Sorts the runners in descending order of the total medals

runrank<-runrank[order(runrank[,2
                               ],decreasing=TRUE),]



climbrankboard<-olympic2 %>% select(Athlete,Sport,Country,Total_Medals)%>%filter(Sport=='Climbing')%>%group_by(Athlete)%>%summarise(sum=sum(Total_Medals))
climbrank<-data.frame(climbrankboard)


names(climbrank)<-c("Athlete","NoofMedals")
#Sorts the cyclists in ascending order of the total medals
climbrank<-climbrank[order(climbrank[,2]),]


#Sorts the cyclists in descending order of the total medals

climbrank<-climbrank[order(climbrank[,2
                               ],decreasing=TRUE),]


#Top five swimmers
Simrank<-head(Simrank[order(Simrank[,2
                               ],decreasing=TRUE),])
#Top five runners
runrank<-head(runrank[order(runrank[,2
                               ],decreasing=TRUE),])

#Top five climbers
climbrank<-head(climbrank[order(climbrank[,2
                                     ],decreasing=TRUE),])

#Top five cyclists
cycrank<-head
