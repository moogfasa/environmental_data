#create Ricker function

ricker_fun = function(x, a, b) 
{
  return(a * x * exp(-b * x))
}

#plot a = 1, b = 1
curve(
  ricker_fun(x, 1, 1), 
  from = 0, to = 5, add = FALSE, 
  main = "Ricker function: a = 1, b = 1",
  ylab = "f(x)", xlab = "x")


#create exponential function
exp_fun = function(x, a, b)
{
  return(a * exp(-b * x))
}

#create a curve of exponential function

curve(
  exp_fun(x, 1.9, 0.1),
  from = 0, to = 10, add = FALSE,
  main = "Exponential function", 
  ylab = "f(x)", xlab = "x")

#test if looks like Mike's 

curve(
  exp_fun(x, 2.2, 1/15), add = FALSE, from = 0, to = 50,
  ann = FALSE, axes = TRUE, ylab = "f(x)")


#seed the RNG so we can reproduce our results

set.seed(1234567)

#specify the x-range and number of points:
n_pts = 50
x_min = 2
x_max = 10

#generate the x-values

x_sim = runif(n_pts, min = x_min, max = x_max)

#Choose intercept and slope for deterministic model and generated predicted y values

param_intercept = 2.3
param_slope = 0.67
y_pred = param_intercept + x_sim * param_slope
plot(x_sim, y_pred, main = "Simulated Dad\nNo Errors", xlab = "", ylab = "")

#add normally-distributed noise to generate 'observed' y-values:
error_mean = 0
error_sd = 0.25

y_observed = 
  y_pred +
  rnorm(
    n = n_pts,
    mean = error_mean, 
    sd = error_sd)
plot(x_sim, y_observed, main = "Normally Distributed Errors\n Contant Variance", xlab = "", ylab = "")

#more sophisticated stochastic model
error_mean = 0
error_sd = 0.1

y_observed_2 = 
  y_pred + 
  rnorm(
    n = n_pts, 
    mean = error_mean, 
    sd = error_sd * x_sim)

par(mfrow = c(1, 2))
plot(x_sim, y_observed, main = "Normally Distributed Errors\n Constant Variance", xlab = "", ylab = "")
plot(x_sim, y_observed_2, main = "Normally Distributed Errors\n Increasing Variance", xlab = "", ylab = "")


#rexp exponentially errors 

y_observed_3 = 
  y_pred + 
  rnorm(
    n = rexp(n = n_pts, rate = 1), 
    mean = error_mean,
    sd = error_sd * x_sim)

par(mfrow = c(1, 2))
plot(x_sim, y_observed, main = "Normally Distributed Errors\n Constant Variance", xlab = "", ylab = "")
plot(x_sim, y_observed_3, main = "Exponentially Distributed Errors", xlab = "", ylab = "")

?curve

#examine histograms of residuals
par(mfrow = c(3, 1))
hist(y_observed - y_pred, main = "sim data 1", xlab = "observed y=values")
hist(y_observed_2 - y_pred, main = "sim data 2", xlab = "observed y=values")
hist(y_observed_3 - y_pred, main = "sim data 3", xlab = "observed y=values")


#lab assignment exponential curve stuff
curve(exp_fun(x, 1.9, 0.0001),
      from = 0, to = 30, 
      main = "Four negative exponential curves", 
      ylab = "f(x)", xlab = "x", col = "black", lty = "solid",
      ylim = c(0, 2))

curve(exp_fun(x, 1.9, 0.7), 
      add = TRUE, col = "black", lty = "dotted")

curve(exp_fun(x, 1.2, 0.2), 
      add = TRUE, col = "red", lty = "solid")

curve(exp_fun(x, 1.2, 0.4), 
      add = TRUE, col = "red", lty = "dotted")


#lab assignment Ricker function stuff
curve(ricker_fun(x, 25, 0.1),
  from = 0, to = 20, 
  main = "Six Ricker function curves", 
  ylab = "f(x)", xlab = "x", col = "black", lty = "solid")

curve(ricker_fun(x, 20, 0.2), 
      add = TRUE, col = "black")

curve(ricker_fun(x, 10, 0.1), 
      add = TRUE, col = "black", lty = "dotted")

curve(ricker_fun(x, 10, 0.2), 
      add = TRUE, col = "black", lty = "dotted")

curve(ricker_fun(x, 75, 0.3), 
      add = TRUE, col = "red", lty = "solid")

curve(ricker_fun(x, 50, 0.4), 
      add = TRUE, col = "red", lty = "dotted")

curve(ricker_fun(x, 40, 0.5), 
      add = TRUE, col = "red", lty = "dotted")


#exponential function with marbled salamander data

plot(dat_dispersal$dist.class, dat_dispersal$disp.rate.ftb, 
     main = "Marbled salamander first time breeders dispersal \n exponential curve fit",
     xlab = "distance class",
     ylab = "Standardized dispersal rate", 
     pch = 17)
curve(exp_fun(x, 0.8, 0.005),
      add = TRUE, col = "purple")

#ricker function with marbled salamander data

plot(dat_dispersal$dist.class, dat_dispersal$disp.rate.ftb, 
     main = "Marbled salamander first-time breeders dispersal \n Ricker model fit",
     xlab = "distance class",
     ylab = "Standardized dispersal rate", 
     pch = 17, xlim = c(-10, 1500))
curve(ricker_fun(x, 0.005, 0.005),
      from = 0, to = 1500,
      add = TRUE, col = "purple")


?resid

dat_dispersal$linear_predicted =line_point_slope(dat_dispersal$dist.class, 45, 0.6, -0.00045)
dat_dispersal$exp_predicted = exp_fun(dat_dispersal$dist.class, 0.8, 0.0019)
dat_dispersal$ricker_predicted = ricker_fun(dat_dispersal$dist.class, 0.0102, 0.0049)

dat_dispersal

#lab 6 demo
agg_means = aggregate(
  flipper_length_mm ~ species, 
  data = dat_pen,
  FUN = "mean",
  na.rm = TRUE)
diff_observed = diff(agg_means[ , 2])

agg_means
diff_observed


