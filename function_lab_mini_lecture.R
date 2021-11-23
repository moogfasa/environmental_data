#custom functions

#function declaration, function arguments, scope

my_fun = function(x, y, print = TRUE)
{
  if (print) print("hello")
  return(x > y)            
}

my_fun(1, 2)

#function arguments with or without default values
#inside the function body, your function can see:
# - everything within the global environment
# - sub-environment of the global environment
# - creates temporary variables and argument values that are not visible in the global environment

prnt_msg = function(msg)
{
  print(msg)
}

prnt_msg(x)

prnt_msg("hello")


require(palmerpenguins)
require(here)

image_file = "ugly_histogram.png"



save_png_1 = function(image_file)
{
  require(here)
  png(
    here("images", image_file),
    width = 1200, height = 1000)  
}

save_png_1("ugly_histo_2.png")

hist(penguins$body_mass_g)

dev.off()

save_png_1("ugly_plot_1.png")
plot(penguins$species, penguins$island)
dev.off()

dat_vec = penguins$body_mass_g
my__title = "Mandy's Histogram!"
x_label = "Mandy's Data!"



steelblue_hist_fun = function(dat_vec, my_title, x_label)
{
  hist(dat_vec, 
       col = "steelblue",
       main = my_title,
       xlab = x_label)
}

steelblue_hist_fun(
  dat_vec = sample(x = 1:100, size = 1000, replace = TRUE),
  my_title = "Mandy's random numbers",
  x_label = "random"
)

?abs
?png


norm_mean = 10.4
norm_sd = 2.4

norm_17 = sample(17, norm_mean, norm_sd)
norm_30 = sample(30, norm_mean, norm_sd)
norm_300 = sample(300, norm_mean, norm_sd)

save_png = function(image_file)
{
  require(here)
  png(
    here("images", image_file),
    width = 700, height = 1400,
    res = 180)  
}

par(mfrow = c(3, 1))
hist(norm_17)
hist(norm_30)
hist(norm_300)

save_png("lab_04_hist_01.png")
dev.off()


?svg


x = seq(-50, 50, length.out = 1000)
y = dnorm(x, mean = 10.4, sd = 2.4)

plot(x, y, main = "Normal PDF: mean = 10.4, sd = 2.4", type = "l", xlim = c(4, 18))
abline(h = 0)

?dnorm
?pdf

#different numbers of points
n_pts_1 = 20
x_min = 1
x_max = 10
x = runif(n = n_pts, min = x_min, max = x_max)
dat_1 = data.frame(x = x, y_observed = rnorm(n_pts_1))

n_pts_2 = 50
x_min = 1
x_max = 10
x = runif(n = n_pts, min = x_min, max = x_max)
dat_2 = data.frame(x = x, y_observed = rnorm(n_pts_2))

#different distributions
n_pts = 70
x_min = 50
x_max = 100
x = runif(n = n_pts, min = x_min, max = x_max)
dat = data.frame(x = x, y_observed = rnorm(n_pts))
dat

#experiment with set.seed
set.seed(10)
n_pts = 70
x_min = 50
x_max = 100
x = runif(n = n_pts, min = x_min, max = x_max)
dat = data.frame(x = x, y_observed = rnorm(n_pts))
dat

#add curve to scatterplot of random points

set.seed(100)
n_pts_4 = 30

guess_x = 6
guess_y = 0
guess_slope = 0.1

x = runif(n = n_pts_4, min = x_min, max = x_max)

plot(y_observed ~ x, data = dat_4, pch = 16)
curve(line_point_slope(x, guess_x, guess_y, guess_slope), add = T)


#quantile function to determine critical z-values for a 95% CI:
alpha = 0.05
z_crit = z_lower = qnorm(alpha/2, mean = 0, sd = 1)
z_upper = qnorm(1 - (alpha/2), mean = 0, sd = 1)
