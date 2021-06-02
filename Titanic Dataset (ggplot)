library(ggplot2)
library(dplyr)

titanic.data <- read.csv("E:/Shruti/Study/MBA/Sem-2/Analytics/R Programming/Data/Data Visualisation using ggplot/titanic.csv")
glimpse(titanic.data)
View(titanic.data)

titanic.data$Pclass <- as.factor(titanic.data$Pclass)

## Assignment: WRITE YOUR CODE HERE for the following 5 questions.

### Q-1 :  Visualize Age and Ticket class distribution
#geom_jitter tells the concentration of data points among factor levels
ggplot(titanic.data, aes(x = Pclass, y = Age)) + geom_jitter(color = 'Green') + theme_bw() +
  labs(title = 'Age and Ticket class distribution')

##      - Draw histogram (x --> age, and fill it with Pclass)
ggplot(titanic.data, aes(x = Age, fill = Pclass)) + geom_histogram(binwidth = 5) +
  labs(title = 'Age Histogram w.r.t. Pclass')

## Q2 -  Instead of histogram in Q-1, Draw Density Curve.
ggplot(titanic.data, aes(x = Age, fill = Pclass)) + geom_density() +
  labs(title = 'Age Density Curve w.r.t. Pclass')

## Q3 :  Now draw Age on X-axis and PClass on Y-axis with Points
ggplot(titanic.data, aes(x = Age, y = Pclass)) + geom_point(color = 'Blue') + theme_bw() 

## Q-4: Add Boxplot to Q-3 (along with points), change points to red color, and change the plot color to blue
ggplot(titanic.data, aes(x = Age, y = Pclass)) + geom_point(color = 'Red') + theme_classic() + geom_boxplot(color = 'blue') 

##      Why are some points RED and some BLUE?
##  Blue Points are outlier for each Pclass that lies outside the quartile range 
## Red Points shows that all the person are not only belong to middle age but also lies in the zone of first 25% and last 25 % of all age range (including most min. and max. age value) as per Pclass

## Q-5: Is there any conclusion you can draw from these plots?  Any relation between age and pclass (category of tickets)
# Large amount of ticket is sold from Class 3 i.e. Most demanding class is class 3
# Class 1 is equally likely preferable to all age group.
# Class 3 is more preferable for 15 - 40 age group.
# Class 2 is preferable to only 20 - 30 ge group.
