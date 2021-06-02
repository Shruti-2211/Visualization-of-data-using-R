library(plotly)

str(iris)

#Plotting histogram
plot.iris.hist <- plot_ly(data = iris, x = ~Petal.Length, type = 'histogram',
                     width = 500, height = 400)
layout(plot.iris.hist, title = 'Iris Dataset : Petal.Length', yaxis = list(title = 'Count'))

#Boxplot
plot.iris.box <- plot_ly(data = iris, y = ~Petal.Width, type = 'box', wwidth = 650,
                         height = 500, color = ~Species)
layout(plot.iris.box, title = 'Iris Dataset : Petal.Width')

#Violin Plot
plot.iris.violin <- plot_ly(data = iris, y = ~Sepal.Length, type = 'violin',
                            wwidth = 650, height = 500, color = ~Species)
layout(plot.iris.violin, title = 'Iris Dataset : Sepal.Length')

#Barplot
plot.iris.bar <- plot_ly(data = iris, x = ~Sepal.Length, type = 'bar')
layout(plot.iris.bar, title = 'Iris Dataset : BarPlot')

#Scatter Plot
plot.iris.scatter <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length,
                             mode = 'markers', type = 'scatter', size = ~Petal.Width,
                             color = ~Species, width = 650, height = 600)
layout(plot.iris.scatter, title = 'Iris Dataset : Sepal.Length v/s Petal.Length')

#3D Scatterplot
plot.iris.3D <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Sepal.Width, z = ~Petal.Length,
        type = 'scatter3d', size = ~Petal.Width, color = ~Species)

layout(plot.iris.3D, title = 'Iris Dataset : Scatter 3D Plot',
       xaxis = list(title = 'Sepal.Length'), yaxis = list(title = 'Sepal.Width'),
       zaxis = list(title = 'Petal.Length'))
plotly_json(plot.iris.3D)

#scatter plot of matrices using iris dataset
iris.num.dims <- select_if(iris, is.numeric)
library(purrr)
iris.num.dims <- map2(iris.num.dims, names(iris.num.dims), ~list(values = .x, label = .y))
plot_ly(type = 'splom', dimensions = setNames(iris.num.dims, NULL), 
        showupperhalf = FALSE, diagonal = list(visible = FALSE))

#Generalized pair plot : extension of scatterplot matrix to support both discrete and numeric variables
#For this ggpairs() use from GGally package
library(GGally)
plot.iris.pair <- ggpairs(iris, aes(color = Species))
class(plot.iris.pair)
ggplotly(plot.iris.pair)







