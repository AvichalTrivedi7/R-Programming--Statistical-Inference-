# Sample statistics for two sample t-test
m1 <- 52  # mean of sample 1
m2 <- 48  # mean of sample 2
s1 <- 8  # sd of sample 1
s2 <- 6 # sd of sample 2
n1 <- 30  # size of sample 1
n2 <- 35  # size of sample 2

#Create sample data (approximation)
sample1 <- rnorm(n1, mean = m1, sd = s1)
sample2 <- rnorm(n2, mean = m2, sd = s2)

# Two-tailed test
res <-t.test(sample1, sample2)
res

# Left-tailed test
t.test(sample1, sample2, alternative = "less")

#Right-tailed test
t.test(sample1, sample, alternative ="greater")