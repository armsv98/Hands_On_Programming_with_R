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
  dice <- sample(x = my_sample, size = 2, replace = TRUE)
  sum(dice)
}
roll()
