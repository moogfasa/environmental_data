require(here)

dat_bird = data.frame(read.csv(here("data", "bird.sta.csv")))
dat_habitat = data.frame(read.csv(here("data", "hab.sta.csv")))

hist(dat_bird$GRJA, 
     main = "Histogram of Gray Jay Abundance\n by Mandy Klehr", 
     xlab = "Number of birds counted", breaks = 0:7 - 0.5, 
     col = 
       adjustcolor(col = "blue", alpha.f = 0.1),
     border = "red")

rbsa_present_absent = as.numeric(dat_all$RBSA != 0)

plot(x = dat_all$ba.snag, y = rbsa_present_absent, 
     main = "Red-breasted Sapsucker Presence Relative to Total Basal Area", 
     xlab = "Basal Area (m2 per ha)", 
     ylab = "Red-breasted Sapsucker Presence")

curve(logistic_midpoint_slope(
  x, midpoint = 60, slope = -0.7), add = TRUE, col = "red")
