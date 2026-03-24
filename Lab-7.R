# Given data
class <- c(10,12,13,15.5,13.5,17.8,19.3,20.2,12.3,16.7,9.9,13.4)

# Sample size
length(class)

# Visualizing data
hist(class, main="Distribution of Sample", col="lightblue")

# Density plot
d <- density(class)
plot(d)

# Shapiro-Wilk normality test
shapiro.test(class)

# One-sample t-test
t.test(class, mu = 15)