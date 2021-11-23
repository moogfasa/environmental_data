require(palmerpenguins)

dat_ade = droplevels(subset(penguins, species == "Adelie"))

hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", 
     xlab = "body mass (g)")

boxplot(dat_ade$body_mass_g ~ sex, data = dat_ade,
        main = "Body Mass of Adelie Penguins",
        ylab = "body mass (g)")

?t.test()

sex_female = subset(dat_ade, sex == "female")

t.test(sex_female$body_mass_g, mu = 0)

sex_male = subset(dat_ade, sex == "male")

t.test(sex_male$body_mass_g, mu = 4000, alternative = "greater")

t.test(sex_female$body_mass_g, sex_male$body_mass_g)

t.test(sex_male$body_mass_g, sex_female$body_mass_g, alternative = "less")

t.test(dat_ade$body_mass_g ~ sex, data = dat_ade)

#Quantile is based on actual observed values - basing on your actual observed values. 
#qt is parametric distribution, using parameters of a distribution