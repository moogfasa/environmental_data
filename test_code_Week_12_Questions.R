require(palmerpenguins)

fit_body_mass = lm(formula = body_mass_g ~ species, data = penguins)

fit_flipper = lm(formula = body_mass_g ~ flipper_length_mm, data = penguins)

anova(fit_body_mass)

summary(fit_body_mass)

summary(fit_flipper)

-1.7 + (0 * 0.043) + (0 * 0.192) + (0 * -0.027)

-1.7 + (0.043 * 0) + (0.192 * 0) - (0.027 * 0)

-1.7 + (10 * 0.043) + (30 * 0.192) + (20 * -0.027)

-1.7 + (10 * 0.043) + (30 * 0.192) - (20 * 0.027)

?bartlett.test
??FUN
?aggregate


dat_sum = c(55, 62, 45, 31, 50, 57, 54)
dat_mean = mean(dat_sum)
print(dat_mean)
dat_sd = sd(dat_sum)

sum((dat_mean - dat_sum)^2 / (7 - 1))

0.36714-0.10164

#0.54688