# VECTORS

# We may create vectors of class numeric or character with the concatenate function
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")

# We can also name the elements of a numeric vector
# Note that the two lines of code below have the same result
codes <- c(italy = 380, canada = 124, egypt = 818)
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)

# We can also name the elements of a numeric vector using the names() function
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country


# Using square brackets is useful for subseting to access specific elements of a vector
codes[2]
codes[c(1,3)]
codes[1:2]


# If the entries of a vector are named, they may be accessed by referring to their name
codes["canada"]
codes[c("egypt","italy")]


# VECTOR COERTION
#The function as.character() turns numbers into characters.
#The function as.numeric() turns characters into numbers.
#In R, missing data is assigned the value NA.

codes<- c(italy=380, canada=124, egypt=818)
codes

names(codes) <- country
codes

# Consecutive integers from 1 to 10 use seq
seq(1, 10)

# Tell sql how much to jump by
seq(1,10,2)
1:10

# A vector is a series of values, all of the same type. They are the most basic data type in R and can hold numeric data, character data, or logical data.
# Subsetting lets us access a specific part of a vector
codes[2]
codes[c(1,3)]
codes[1:2]

# Character vectors are enclosed in double quotes. They should be written as strings
codes["canada"]
codes[c("egypt", "italy")]

# These are numeric vectors
temp <- c(35, 88, 42, 84, 81, 30)
temp

# Vector coercion
# C is CONCATENATE or COMBINE which is used to create vectors
x<- c(1,"canada",3)
x
class(x)

# R coerced the data into a character string
# It guessed because we put a char string in the middle, even 1 and 3 are character strings
x <- 1:5
y <- as.character(x)
x

# R offers functions to force a specific coercion, you can turn no.s to characters using as.character
as.numeric(y)

# You can turn them back using as.numeric
# R has a special value for missing data NA. We can get them from coercion
x<- c("1","b","3")
as.numeric(x)

# How do we Connect Numeric and Character Vectors
temp <- c(35, 88, 42, 84, 81, 30)
temp

city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city

names(temp) <- city
temp

# We subset using several special operators [] :
temp[1:3]

# What about accessing temp for any two cities
temp[c(3,5)]

# Sequence operator
x <- 12:73
x
length(x)

# Create a vector containing all the positive odd numbers smaller than 100.
seq(1, 100, 2)
seq(7, 49, 7) 
seq(7, 50, 7)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
length(seq(6, 55, 4/7))
seq(6, 55, 4/7)

# Sequences of certain length.The argument length.out.lets us generate sequences that are increasing by the same amount but are of the prespecified length.
x <- seq(0, 100, length.out = 5)
x
class(x)

a <- seq(1, 10, length.out = 100)
class(a)
a <- seq(1, 10, length.out = 100)
a

# Integers
# This is another shortcut, down here
class(seq(1, 10, 0.5))
# the integer class. You can create an integer by adding the letter L after a whole number.
class(3L)
3L-3

# For most practical purposes, integers and numerics are indistinguishable. 
# integers occupy less space in the computer memory, so for big computations using integers can have a substantial impact.
# COERCION
# when an entry does not match what an R function is expecting, R tries to guess what we meant before throwing an error.
# We can avoid issues with coercion in R by changing characters to numerics and vice-versa

# Typecasting
x <- c(1, 3, 5,"a")
x
x <- as.numeric(x)
x
n <- c(31, 54, 67, 89, 45, 34, 24,1,6,8)
n


# The function sort() sorts a vector in increasing order.
sort(n)
index <-order(n)

# The function order() produces the indices needed to obtain the sorted vector, 
# e.g. a result of  2 3 1 5 4 means the sorted vector will be produced 
# by listing the 2nd, 3rd, 1st, 5th, and then 4th item of the original vector.
n[index]
x <- c(31,4,15,92,65)
x

