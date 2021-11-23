getwd()
install.packages("here")
library(here)
here("data", "hab.sta.csv")



read.csv(here("data", "hab.sta.csv"))

install.packages("scales")
library("scales")


dat_habitat = data.frame(read.csv(here("data", "hab.sta.csv")))

dat_habitat



par(mfrow = c(2, 3))
hist(dat_habitat$elev,
     main = "Histogram of study site elevation",
     xlab = "Elevation (m)", breaks = 5)
hist(dat_habitat$aspect, 
     main = "Histogram of study site aspect",
     xlab = "Aspect (degrees)", breaks = 5)
hist(dat_habitat$slope, 
     main = "Histogram of study site slope",
     xlab = "Slope (%)", breaks = 5)


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

plot(dat_habitat$elev, dat_habitat$ba.tot,
     main = "Basal area and elevation", 
     ylab = "Total Basal Area", 
     xlab = "Elevation (m)",
     col = alpha("blue", 0.3), pch = 20, cex = 0.8)

data_center_x.e = mean(dat_habitat$elev)
data_center_y.e = mean(dat_habitat$ba.tot)
c(data_center_x.e, data_center_y.e)
curve(
  line_point_slope(
    x, 
    data_center_x.e,
    data_center_y.e, 
    0.45), col = "dark gray", lwd = 2, 
  add = TRUE)


plot(dat_habitat$aspect, dat_habitat$ba.tot,
     main = "Basal area and aspect", 
     ylab = "Total Basal Area", 
     xlab = "Aspect (degrees)", 
     col = alpha("purple", 0.3), pch = 20, cex = 0.8)

data_center_x.a = mean(dat_habitat$aspect)
data_center_y.a = mean(dat_habitat$ba.tot)
c(data_center_x.a, data_center_y.a)
curve(
  line_point_slope(
    x, 
    data_center_x.a,
    data_center_y.a, 
    0.45), col = "gray", lwd = 2, 
  add = TRUE)


plot(dat_habitat$slope, dat_habitat$ba.tot,
     main = "Basal area and slope", 
     ylab = "Total Basal Area", 
     xlab = "Slope (%)",
     col = alpha("red", 0.3), pch = 20, cex = 0.8)


data_center_x.s = mean(dat_habitat$slope)
data_center_y.s = mean(dat_habitat$ba.tot)
c(data_center_x.s, data_center_y.s)
curve(
  line_point_slope(
    x,
    50,
    25,
    0.45),
  add = TRUE, col = "gray", lwd = 2)

