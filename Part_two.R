# R objects

# Vector: one-dimensional homogenous data
# Vector types: integers, doubles, characters, logicals, complex, and raw
# L should be included to create integer
int <- c(-4L, 5L)
doub <- c(2, 5, 3.14)
text <- c("The", "One", "Ring", "TO", "Rule", "Them", "All")
logic <- c(TRUE, FALSE)
complex <- c(1 + 1i, 3, 4 - 2i)
raw <- raw(5)
typeof(raw)

# Attribute: piece of information attached to an object
fibo_seq <- c(0, 0, 1, 1, 2, 3, 5, 8)

names(fibo_seq) <- c("1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th")
fibo_seq
names(fibo_seq) <- NULL

class(fibo_seq)

dim(fibo_seq) <- c(2, 2, 2)
fibo_seq

# Matrix: similar to matrix in linear algebra
powers_of_two <- c(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048)
powers_of_two_matrix <- matrix(powers_of_two, nrow = 3, byrow = TRUE)
powers_of_two_matrix

# Array: 
powers_of_two_array <- array(powers_of_two, dim = c(2, 3, 2))
powers_of_two_array

# Dates and Time:
now <- Sys.time()
typeof(now)

# Factor: storing categorial information

# Coercion: 
char_vector <- c(TRUE, 5, "a")
num_vector <- c(TRUE, 2, 5, FALSE)
sum(num_vector)
# Converting data from one type to another
as.character(TRUE)

# List: group R objects
my_list <- list(100:130, "R", list(TRUE, FALSE))

# Data Frame: two-dimensional version of list
# Saving data:
write.csv(deck, file = "cards.csv", row.names = FALSE)



# R notations
# Selecting values: Positive integers, Negative integers, Zero, Blank spaces,
# Logical Values, Names
# Positive integers: like "ij" notation in linear algebra,
# ith row and jth column
deck[1, c(1,2,3)]
as_vector <- deck[1:3, 1]
as_dataframe <- deck[1:3, 1:2]
as_dataframe2 <- deck[1:3, 1, drop = FALSE]

# Negative integers: every element except elements in negative index
as_dataframe3 <- deck[-(4:52), 1:3]

# Zero: returns nothing
as_zero <- deck[0, 1:3]

# Blank spaces: extracts every value in a dimension
as_dataframe4 <- deck[1:5, ]

# Logical values: matches each true and false to a column or row
as_dataframe5 <- deck[1:5, c(FALSE, TRUE, TRUE)]

# Names: 
as_dataframe6 <- deck[1:2, c("face", "suit")]