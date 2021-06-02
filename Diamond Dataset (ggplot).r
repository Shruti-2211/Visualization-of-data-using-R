#Using ggplot on diamonds dataset

library(ggplot2)

#Hmisc package includes lattice, survival, Formula packages
library(Hmisc)

#describe function is in : Hmisc Package
describe(diamonds)
str(diamonds)

#Creating Plot of Diamond Prices as per their carat value

ggplot(diamonds, aes(x = carat, y = price)) + geom_point() + theme_light() + 
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')

#Changing Size, shape & alpha values

#Changing alpha, applying color Using rgb format by providing value keeping max value is 256
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(alpha = 0.3, color = rgb(107,189,123, max = 256)) + 
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')  

#Changing size, applying color using rgb mode by specify the proportion
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(size = 7, color = rgb(0.6, 0.4, 0.8)) + 
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')

#Note : to see hex code of colors install scales package
library(scales)
#Display grid of 9 colors with their hex codes
show_col(hue_pal()(9))

#Changing shape, applying color by hexadecimal codes
ggplot(diamonds, aes(x = carat, y = price)) + geom_point(shape = 8, color = '#93AA00') + 
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')  

#Putting all things i.e., size, shape alpha and color
ggplot(diamonds, aes(x = carat , y = price)) + 
  geom_point(color = 'Blue', size = 4, shape = 9, alpha = 0.2) +
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')

#Plot using scaling by passing carat to size variable
ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_point(aes(size = carat), color = 'orange') + 
  scale_size(name="Legend", range=c(2,10)) +
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')

#Plot by applying scaling to shape using cut attribute of diamond dataset
ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_point(aes(shape = cut), size = 4) +
  scale_shape(name = "Legend") + 
  labs(x = 'Carat Size', y = 'Price', title = 'Diamonds Dataset : Carat vs Prices')

#Plot diamond dataset by applying scale to alpha to see the dataset precisely
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(aes(alpha = price)) +
  scale_alpha(range = c(0.001, 1.0)) +
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices')

#Combine all these together
ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_point(aes(size = carat, shape = cut, alpha = price)) +
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices')

#Applying color gradient
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(aes(color = price)) +
  scale_color_gradient(name = 'Legend', low = 'purple', high = 'orange') +
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices')

#Assign color variable to clarity as categorical variable
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(aes(color = clarity)) + theme_classic() +
  scale_color_manual(name = 'Legend', values = c('red', 'darkgreen', 'blue', 'darkorange', 'black', 'red', 'grey', 'brown')) +
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices')

#Apply color palette from RColorBrewer package rather than passing multiple color values
library(RColorBrewer)
display.brewer.all()
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(aes(color = clarity)) +
  scale_color_brewer(name = 'Legend', palette = 'RdYlGn')+
  labs(x = 'Carat', y = 'Price', title = 'Diamonds Dataset', subtitle = 'Carat vs Prices') +
  guides(colour = guide_legend(override.aes = list(alpha = 1, size = 4)))

#Note : guides function override the aesthetics of plotting on legend

#Line graph
ggplot(diamonds, aes(x = carat, y = price)) + geom_line(color = 'blue') + geom_smooth()

#applying regression using lm
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth(method = 'lm', size = 3)

#plot trend as scaling color on clarity
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth(method = 'lm', aes(color = clarity))

#Bar Graphs
ggplot(diamonds, aes(cut)) + geom_bar(aes(fill = clarity))

#Bar - graph : position - dodge
ggplot(diamonds, aes(cut)) + geom_bar(aes(fill = clarity), position = 'dodge') +
  scale_fill_brewer(palette = 'Paired')

#Boxplot
ggplot(diamonds, aes(x = cut, y = price)) + geom_boxplot(aes(color = cut))

#Density curve
ggplot(diamonds, aes(x = price)) + geom_density(aes(color = cut))

#Violin shape curve
ggplot(diamonds, aes(cut, price)) + geom_violin(aes(color = cut, fill = cut))

#Combine all together
ggplot(diamonds, aes(cut)) +
  geom_bar(aes(fill = clarity), position = 'dodge') +
  geom_hline(yintercept = 2500, color = 'darkorange') +
  annotate("text", x = 1.5, y = 2750, label = 'My Budget', color = 'darkorange')
