install.packages("readxl")  
library(readxl)
setwd("C:/Users/AVICHAL TRIVEDI/Documents/College 2nd Year (Repositories)/R Programming (Statistical Inference)/Lab-2")
lab2_data <- read_excel("Salary_Data.xlsx")
View(lab2_data)
population=lab2_data
population

# Showing the sample mean is unbiased for population
##population mean
population1_mean=mean(population$Salary)
population1_mean

## To obtain the unbiased estimate of population mean
all_samples_possible=choose(25,5)
all_samples_possible
n=5
set.seed(12)
sampDist <- replicate(all_samples_possible, mean(sample(population$Salary, n)))

# Expected value of the estimate
mean(sampDist) 

## Trying on Own first
##1
n <- 10
set.seed(12)
sampDist10 <- replicate(1000, mean(sample(population$Salary, n)))
mean(sampDist10)

##2
n <- 20
set.seed(12)
sampDist20 <- replicate(1000, mean(sample(population$Salary, n)))
mean(sampDist20)