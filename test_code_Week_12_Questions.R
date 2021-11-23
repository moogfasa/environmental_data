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
