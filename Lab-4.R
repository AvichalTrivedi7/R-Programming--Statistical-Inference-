# Test of equality of two proportions

# Number of smokers
x <- c(490, 400)

# Total individuals in each group
n <- c(500, 500)

# Perform proportion test
result <- prop.test(x, n)

# Print result
result