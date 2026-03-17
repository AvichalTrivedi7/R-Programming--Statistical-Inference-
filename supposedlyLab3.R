# Sample statistics for one sample t-test
x<- c(52) #sample mean
mu <- 50 #hypothesised population mean
s<- 8 #standard deviation
n <- 30 #sample size

# Create sample data (approximation)
sample <- rnorm(n, mean = 52, sd = 8)

# Two-tailed test
res <- t.test(sample, mu = 50)
res

# Left-tailed test
t.test(sample, mu = 50, alternative = "less")

#Right-tailed test
t.test(sample, mu = 50, alternative = "greater")