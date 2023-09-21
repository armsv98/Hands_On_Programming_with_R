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