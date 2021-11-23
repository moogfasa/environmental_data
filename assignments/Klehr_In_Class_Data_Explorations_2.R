install.packages("palmerpenguins")
install.packages("here")

require(palmerpenguins)
require(here)

class(penguins)

penguins = data.frame(penguins)

mean(penguins$body_mass_g)

head(penguins)

?mean

mean(penguins$body_mass_g, na.rm = TRUE)

summary(penguins)

#pair plots is pairs( )

pairs(penguins)

#plot(x = data$name of what you want, y = data$name of what you want)

plot(x = penguins$species, y = penguins$bill_length_mm)

plot(x = penguins$flipper_length_mm, y = penguins$body_mass_g)

#hist(x = data$name) and to add breaks add to hist(breaks = 7-0.5)

hist(penguins$flipper_length_mm, breaks = 6)

boxplot(penguins$bill_depth_mm)

boxplot(bill_depth_mm ~ sex, data = penguins)

#use par( ) to put multiple plots on a single figure
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#coplots

coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

