setwd("E:/GMU/AIT-580/Classwork")

library(tidyverse)

messydata <- read.csv("F19classdata001.csv", sep = ",")

#Tukeys five number summary for each variable
summary(messydata)

#With the summary of section, we will get total count of students in each section.
summary(messydata$section)

#Summary gives mean, minimum and maximum age of students of both the sections.
summary(messydata$age)

#Summary gives mean, minimum and maximum height of students of both the sections
summary(messydata$height)

#Summary gives count of male and female students of both the sections
summary(messydata$gender)

#Summary gives count of students from different countries of both the sections
summary(messydata$country)

#Summary gives count of types of programs in which students enrolled of both the sections
summary(messydata$typeofprogram)

#Summary shows 1 student belonged to different major
summary(messydata$major)

#Summary gives count of students who chose concentration or not
summary(messydata$concentration)

#Summary gives mean value of graduation year
summary(messydata$gradudateyear)

#Summary gives count of students who are working or not working of both the sections
summary(messydata$working)

#graduatedmonth contains 31 NAs, which is more than 25%. So, the variable is neglected for visualizations.
sum(is.na(messydata$gradudatemonth))

#Visualizations of analysis using barplot.
#Note: Results contain count of missing values or unknown values

ggplot(messydata, aes(x = gender)) + geom_bar(fill = "green", color = "black") +
  labs(title = "Bar plot showing total number of males and females of both sections")

ggplot(messydata, aes(x = typeofprogram)) + geom_bar(fill = "blue", color = "black")+
  labs(title = "Bar plot showing total count of students in which they are enrolled to program")

ggplot(messydata, aes(x = major)) + geom_bar(fill = "red", color = "black")+
  labs(title = "Bar plot shows student belonged to different major")

ggplot(messydata, aes(x = gradudateyear)) + geom_bar(fill = "orange", color = "black")+
  labs(title = "Bar plot shows year in which maximum students graduate")

ggplot(messydata, aes(x = country)) + geom_bar(fill = "brown", color = "black")+
  labs(title = "Bar plot shows total count of students belonged to different country")

ggplot(messydata, aes(x = working)) + geom_bar(fill = "pink", color = "black")+
  labs(title = "Bar plot shows total count of students who are working(Y) or not working(N)")

#messydatasection1 and messydatasection2 are two subsets of main data frame messydata

messydatasection1 <- messydata[messydata$section == 'S001',]
messydatasection1
messydatasection2 <- messydata[messydata$section == 'S003',]
messydatasection2
str(messydatasection1)

#We can compare from below graphs 1 & 2 that section 1 has maximum male students, whereas section 2 has maximum female students.
#Also graph shows count of unknown values
ggplot(messydatasection1, aes(x = gender)) + geom_bar(fill = "green", color = "black")+
  labs(title = "Graph:1 Bar plot shows count of male and female students of section1")
ggplot(messydatasection2, aes(x = gender)) + geom_bar(fill = "green", color = "black")+
  labs(title = "Graph:2 Bar plot shows count of male and female students of section2")

#It is observed from below both the graphs 3 & 4 that count of Indian students is maximum in both sections
#Also graph conains count of missing values
ggplot(messydatasection1, aes(x = country)) + geom_bar(fill = "blue", color = "black")+
  labs(title = "Graph:3 Bar plot shows total count of students belonged to different country in section1")
ggplot(messydatasection2, aes(x = country)) + geom_bar(fill = "blue", color = "black")+
  labs(title = "Graph:4 Bar plot shows total count of students belonged to different country in section2")

#We can observe from below graphs 5 & 6 that section1 has maximum students who are not working as compared to section2
#Graph depicts count of unknown values as well
ggplot(messydatasection1, aes(x = working)) + geom_bar(fill = "pink", color = "black")+
  labs(title = "Graph:5 Bar plot shows total count of students who are working(Y) or not working(N) in section1")
ggplot(messydatasection2, aes(x = working)) + geom_bar(fill = "pink", color = "black")+
  labs(title = "Graph:6 Bar plot shows total count of students who are working(Y) or not working(N) in section2")

#From below both graphs 7 & 8, we can observe that both sections has maximum students of age 23
ggplot(messydatasection1, aes(x = age)) + geom_bar(fill = "orange", color = "black")+
  labs(title = "Graph:7 Bar plot shows total count of students falling in different age of section1")
ggplot(messydatasection2, aes(x = age)) + geom_bar(fill = "pink", color = "black")+
  labs(title = "Graph:8 Bar plot shows total count of students falling in differen age of section2")

#We can observe from below both graphs 9 & 10 that maximum students graduate in the year 2021 in both the sections
ggplot(messydatasection1, aes(x = gradudateyear)) + geom_bar(fill = "purple", color = "black")+
  labs(title = "Graph:9 Bar plot shows total count of students who graduate in particular year of section1")
ggplot(messydatasection2, aes(x = gradudateyear)) + geom_bar(fill = "purple", color = "black")+
  labs(title = "Graph:10 Bar plot shows total count of students who graduate in particular year of section2")

#It's observed from below both graphs 11 & 12 that section 2 has more number of pathway students than section 1 
ggplot(messydatasection1, aes(x = typeofprogram)) + geom_bar(fill = "yellow", color = "black")+
  labs(title = "Graph:11 Bar plot shows total count of students in which they are enrolled to program of section1")
ggplot(messydatasection2, aes(x = typeofprogram)) + geom_bar(fill = "yellow", color = "black")+
  labs(title = "Graph:12 Bar plot shows total count of students in which they are enrolled to program of section2")

