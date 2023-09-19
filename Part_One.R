# Part 1
# Objects
vector_a <- c(0, 0, 1, 1, 2)
vector_b <- c(3, 5, 8, 13, 21)
vector_c <- c(34, 55, 89)

# Element-wise execution
vector_a * vector_b
# Inner multiplication
vector_a %*% vector_b
# Outer multiplication
vector_a %o% vector_b

# Functions
sample(x = 1:6, size = 2, replace = TRUE)
args(sample)

# Writing functions
roll <- function(my_sample = 1:6) {
  dice <- sample(x = my_sample, size = 2, replace = TRUE,
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}
roll()

# Packages
library(ggplot2)
x <- 1:12
fibo_seq <- c(0, 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 56)
# Scatter plot
qplot(x, fibo_seq)

# Histogram
qplot(replicate(10000, roll()), geom = "histogram")
