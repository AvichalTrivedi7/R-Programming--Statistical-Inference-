# Data
women_weight <- c(38.9, 61.2, 73.3, 21.8, 63.4, 64.6, 48.4, 48.8, 48.5)
men_weight <- c(67.8, 60, 63.4, 76, 89.4, 73.3, 67.3, 61.3, 62.4)

# Creating data frame
my_data <- data.frame(
  group = rep(c("Woman", "Man"), each = 9),
  weight = c(women_weight, men_weight)
)

# Showing data
my_data

# Summary statistics
aggregate(weight ~ group, data = my_data, function(x) c(count = length(x), mean = mean(x), sd = sd(x)))

# Boxplot using base R
boxplot(weight ~ group, data = my_data,
        col = c("lightblue", "lightgreen"),
        main = "Boxplot of Weights",
        xlab = "Groups",
        ylab = "Weight")

# Shapiro-Wilk normality test for men
with(my_data, shapiro.test(weight[group == "Man"]))

# Shapiro-Wilk normality test for women
with(my_data, shapiro.test(weight[group == "Woman"]))

# F-test for equality of variances
var.test(weight ~ group, data = my_data)

# Independent sample t-test
t.test(weight ~ group, data = my_data, var.equal = TRUE)