# Setting working directory and loading dataset
setwd("C:/Users/AVICHAL TRIVEDI/Documents/College 2nd Year (Repositories)/R Programming (Statistical Inference)/Lab CIA")
test_data <- read.csv("test.csv")

# Viewing dataset
View(test_data)

# Treating the dataset as population
population <- test_data


# Step 1: Calculating population mean of clock_speed (I randomly chose clock_speed to work on among the 14 features)

population_mean <- mean(population$clock_speed)
population_mean


# Step 2: Checking Unbiasedness of Sample Mean  
# (E(sample mean) = population mean)

# Taking sample size n = 5
n <- 5
set.seed(7)

# Generating sampling distribution of sample mean
sampDist <- replicate(1000, mean(sample(population$clock_speed, n)))

# Calculating expected value of sample mean
mean(sampDist)


# Step 3: Checking Consistency of Sample Mean
# (As sample size increases, estimate should become more accurate)

# For sample size n = 10
n <- 10
set.seed(7)

sampDist10 <- replicate(1000, mean(sample(population$clock_speed, n)))

mean(sampDist10)


# Step 4: Efficiency of Mean vs Range
# (Comparing variability using variance)

# Sampling distribution of mean (again for comparison)
n <- 5
set.seed(7)

mean_dist <- replicate(1000, mean(sample(population$clock_speed, n)))

# Sampling distribution of range
range_dist <- replicate(1000, max(sample(population$clock_speed, n)) - min(sample(population$clock_speed, n)))

# Calculating variance
var_mean <- var(mean_dist)
var_range <- var(range_dist)

var_mean
var_range
