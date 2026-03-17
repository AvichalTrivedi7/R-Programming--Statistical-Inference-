# Data
x <- 20
n <- 120
p <- 0.25

# Performing test to check the belief is correct (left-tailed)
result <- prop.test(x, n, p = p, alternative = "less", correct = FALSE)

# Show result
result