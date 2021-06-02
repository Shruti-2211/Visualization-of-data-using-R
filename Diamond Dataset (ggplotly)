#Using ggplot on diamonds dataset
library(plotly)
library(ggplot2)

#Hmisc package includes lattice, survival, Formula packages
library(Hmisc)

#describe function is in : Hmisc Package
describe(diamonds)
str(diamonds)

#Creating Plot of Diamond Prices as per their carat value

plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point() + theme_light() + 
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')
ggplotly(plot.dataset)

#Changing Size, shape & alpha values

#Changing shape, applying color by hexadecimal codes
plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point(shape = 8, color = '#93AA00') + 
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')  
ggplotly(plot.dataset)

#Putting all things i.e., size, shape alpha and color
plot.dataset <- ggplot(diamonds, aes(x = carat , y = price)) + 
  geom_point(color = 'Blue', size = 4, shape = 9, alpha = 0.2) +
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')
ggplotly(plot.dataset)

#Plot by applying scaling to shape using cut attribute of diamond dataset
plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_point(aes(shape = cut), size = 4) +
  scale_shape(name = "Legend") + 
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')
ggplotly(plot.dataset)

#Combine all these together
plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_point(aes(size = carat, shape = cut, alpha = price)) +
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices')
ggplotly(plot.dataset)

#Apply color palette from RColorBrewer package rather than passing multiple color values
library(RColorBrewer)
display.brewer.all()
plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(aes(alpha = 0.4, color = clarity)) + theme_minimal() +
  scale_color_brewer(name = 'Legend', palette = 'Dark2')+
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices') +
  guides(colour = guide_legend(override.aes = list(alpha = 1, size = 4)))
ggplotly(plot.dataset)
#Note : guides function override the aesthetics of plotting on legend

#Line graph
plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) + geom_line(color = 'blue') + geom_smooth()
ggplotly(plot.dataset)

#plot trend as scaling color on clarity
plot.dataset <- ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth(method = 'lm', aes(color = clarity))
ggplotly(plot.dataset)

#Bar - graph : position - dodge
plot.dataset <- ggplot(diamonds, aes(cut)) +
  geom_bar(aes(fill = clarity), position = 'dodge') +
  geom_hline(yintercept = 2500, color = 'darkorange') +
  annotate("text", x = 1.5, y = 2750, label = 'My Budget', color = 'darkorange')
ggplotly(plot.dataset)

#Boxplot
plot.dataset <- ggplot(diamonds, aes(x = cut, y = price)) + geom_boxplot(aes(color = cut))
ggplotly(plot.dataset)
