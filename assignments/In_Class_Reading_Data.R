
read.csv(here("data", "catrate.csv"))
library(here)
here("data", "catrate.csv")

read.csv(here("data", "delomys.csv"))
read.csv(here("data", "rope.csv"))

dat_catrate = read.csv(here("data", "catrate.csv"))
dat_delomys = read.csv(here("data", "delomys.csv"))
dat_rope = read.csv(here("data", "rope.csv"))

head(dat_catrate)
head(dat_delomys)
head(dat_rope)

plot(dat_rope$p.cut, dat_rope$p.strength,
     main = "Mandy's Rope Data Plot",
     ylab = "Rope Strength", 
     xlab = "Rope Cut",
     col = "red", pch = 20, cex = 0.8)
