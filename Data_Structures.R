# Data Structures in R Programming
# Data Structures are organized by dimensonality and homogenousity

# Vector: one-dimensional homogenous ordered data structure
my_vector <- c(0, 1, 1, 2, 3, 5, 8)

# List: one-dimensional heterogenous ordered data structure
my_list <- list("fibonacci sequence :", my_vector)

# Data Frame: two-dimensional heterogeous lists of vectors
# used to store the tabular data
name <- c("Aragorn", "Gandalf", "Frodo")
title <- c("Heir of Isildur", "The Grey", "Bearer of the One Ring")
height <- c(198, 168, 124)
my_dataframe <- data.frame(name, title, height)

# Matrix: two-dimensional homogenous data structures
my_matrix <- matrix(data = c("a", "b", "c", "d", "e", "f"),
                    nrow = 2, ncol = 3, byrow = TRUE)

# Array: n-dimensional homogenous data structure
my_array <- array(data = c(1:9), dim = c(2, 2, 5))