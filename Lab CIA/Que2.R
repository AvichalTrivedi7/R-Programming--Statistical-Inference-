# Data
x <- c(300, 550)   # number of smokers
n <- c(500, 1000)  # total men

# Performing proportion test to check significance difference
result <- prop.test(x, n)

# Showing result
result