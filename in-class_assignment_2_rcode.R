#add iris data
data("iris")

#view iris data table
head(iris)

#calculate mean and standard deviation

iris$Sepal.Width

#calculate mean and standard deviation

mean(iris$Sepal.Length)

sd(iris$Sepal.Width)

#build a scatterplot

plot(x = iris$Sepal.Width, y = iris$Sepal.Length)

#center of scatterplot

data_center_x = mean(iris$Sepal.Width)
data_center_y = mean(iris$Sepal.Length)
c(data_center_x, data_center_y)

#add a point to an existing plot
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points(x = data_center_x, y = data_center_y, col = "red")

#plot a line through the plot
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope)
      return(-(x1 * slope) + y1)
  
  linear =
    function(x, yint, slope)
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}

#run slope with 2,4,4,-2

line_point_slope(2, 4, 4, -2)

#add line through point on a scatter plot

plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points (x = data_center_x, y = data_center_y, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_x,
    data_center_y, 
    -0.1),
  add = TRUE)

#add the line through a different point on the scatter plot (for fun)

plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points (x = 4, y = 6, col = "red")
curve(
  line_point_slope(
    x, 
    4,
    6,
    1),
  add = TRUE)

#redraw the plot with a different slope
#add a custom title (main = "did it!")
#add labels to axes (xlab = "Sepal Width") and (ylab = "Sepal Length")


plot(x = iris$Sepal.Width, y = iris$Sepal.Length, 
     main = "Mandy's Iris Plot",
     xlab = "Sepal Width",
     ylab = "Sepal Length")
points (x = data_center_x, y = data_center_y, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_x,
    data_center_y, 
    -2),
  add = TRUE)





