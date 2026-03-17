# Question Used - 
# Population of mice has 50% males (p = 0.5). Out of 160 mice with cancer, 95 are male.
# We test whether proportion of male cancer cases differs from 0.5.


# Test of significance of single proportion →

# Given data
x <- 95      # number of male mice with cancer
n <- 160     # total mice with cancer
p <- 0.5     # hypothesized population proportion

# Proportion test
result <- prop.test(x, n, p = p, correct = FALSE)

# Printing result
result

