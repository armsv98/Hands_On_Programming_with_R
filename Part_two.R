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

# Factor: storing categorical information

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


# Deal a card:
deal <- function(cards){
  cards[1, ]
}

shuffle <- function(cards){
  random <- sample(1:52, 52)
  cards[random, ]
}

shuffled_deck <- shuffle(deck)
deal(shuffled_deck)

# Dollar sign: extract values of a column from data frame as a vector or
# elements of list that have names
deck$face

# Double bracket: returns value of element
prime_numbers <- list(2, 3, 5, 7, 11, 13, 17)
retrieving_data_as_object <- prime_numbers[2]
retrieving_data_as_values <- prime_numbers[[2]]


# Modifying values
deck2 <- deck
deck2$new <- 1:52
deck2$new <- NULL

deck2$value[c(13, 26, 39, 52)] <- 14

war_deck <- shuffle(deck)
war_deck$value[deck$face == 'ace'] <- 14
war_deck

hearts_deck <- shuffle(deck)
hearts_deck$value[hearts_deck$suit != "hearts"] <- 0
hearts_deck$value[hearts_deck$suit == "hearts"] <- 1
hearts_deck$value[hearts_deck$suit == "spades" & hearts_deck$face == "queen"] <- 13
hearts_deck

# Missing information: NA
mean(c(NA, 1:50), na.rm = TRUE)
is.na(c(1, 2, 3, NA))


# Environments
library(pryr)
parenvs(all = TRUE)
as.environment("package:pryr")
environment()
# Objects saved in an environment
ls(globalenv())

# Scoping rules: 1) R looks for object in the current active environment
# 2) while working with command line, active environment is global environment
# 3) When R does not find an object in an environment, R looks in the 
# environment’s parent environment, then the parent of the parent, and so on,
# until R finds the object or reaches the empty environment.

# Evaluation: R will use the new environment as the active environment while
# it runs the function, and then R will return to the environment that you
# called the function from, bringing the function’s result with it.

show_env <- function(x){
  a <- 1
  b <- 2
  c <- 3
  list(ran.in = environment(), parent = parent.env(environment()),
       objects = ls.str(environment()))
}

show_env("runtime environment indicator")