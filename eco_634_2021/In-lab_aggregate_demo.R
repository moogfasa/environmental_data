#In Lab Aggregate Demo

require(palmerpenguins)

?aggregate()

aggregate(penguins$flipper_length_mm, list(penguins$species), FUN = mean, na.rm = TRUE)

#notation shortcut

aggregate(flipper_length_mm ~ species, data = penguins, FUN = mean, na.rm = TRUE)

#use notation with other things!

boxplot(flipper_length_mm ~ species, data = penguins)

#use notation and add another data column, sex

aggregate(flipper_length_mm ~ species + sex, data = penguins, FUN = mean, na.rm = TRUE)

boxplot(flipper_length_mm ~ species + sex, data = penguins)


#Calculate critical t-values

n = nrow(penguins)

#quantile function, and what values is after the 95% CI 



qt(0.975, n - 1)
qt(0.025, n - 1)

alpha = 0.05

qt(1 - alpha / 2, n - 1)
qt(alpha / 2, n - 1)






