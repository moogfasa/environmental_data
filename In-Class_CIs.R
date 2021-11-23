qnorm(c(0.025, 0.975))

qnorm(c(0.025, 0.900))


?qt

qnorm(c(0.05, 0.95)) #divide 90% because upper tail and lower tail. 

qt(0.95, 10)

qt(0.025, 5000)

qt(0.025, 50 - 1) 

tcrit = qt(0.025, 49)
mean = 10.0
sd = 3.14
CI <- c(mean + sd*tcrit, mean - sd*tcrit)
CI

#0.2778827 or 0.2778817 for SSE mean of gentoo bill length

#qt(c(0.025, 0.975), df = n_gentoo)


#tcrit <- qt(0.05/2, df, lower.tail = FALSE)
#CI <- c(xbar + gen2sse*tcrit, xbar - gen2sse*tcrit)
