require(here)

dat_ginkgo = read.csv(here("data", "ginkgo_data_2021.csv"))

boxplot(dat_ginkgo$notch_depth ~ dat_ginkgo$seeds_present, data = dat_ginkgo,
        xlab = "Ginkgo Seeds Present", ylab = "Ginkgo Notch Depth")
boxplot(log(notch_depth + 1) ~ seeds_present, data = subset(dat_ginkgo, notch_depth > 0))

plot(x = dat_ginkgo$max_depth, y = dat_ginkgo$max_width)

boxplot(dat_ginkgo$max_depth ~ dat_ginkgo$seeds_present, data = dat_ginkgo)
