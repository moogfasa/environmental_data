require(here)
dat_bird = data.frame(read.csv(here("data", "bird.sta.csv")))
dat_habitat = data.frame(read.csv(here("data", "hab.sta.csv")))
head(dat_habitat)
head(dat_bird)

print(dat_bird$WIWR)
mean(dat_bird$WIWR)

?dbinom

dbinom(dat_bird$WIWR, 6, 0.24)

#poisson can observe any number of birds in a plot; binomial in this plot I can observe some count of birds, n the total possible number of birds than I can actually observe up to n birds

sum(log(dbinom(dat_bird$WIWR, 6, 0.24)))

summary(dat_bird$WIWR)
