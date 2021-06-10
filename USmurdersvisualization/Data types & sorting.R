
# DATA TYPES
# loading the dslabs package and the murders dataset

library(dslabs)
data(murders)

# determining that the murders dataset is of the "data frame" class
class(murders)

# finding out more about the structure of the object
str(murders)

# showing the first 6 lines of the dataset
head(murders)

# using the accessor operator to obtain the population column
murders$population

# displaying the variable names in the murders dataset
names(murders)

# determining how many entries are in a vector
pop <- murders$population
length(pop)

# vectors can be of class numeric and character
class(pop)
class(murders$state)

# logical vectors are either TRUE or FALSE
z <- 3 == 2
z
class(z)

# factors are another type of class
class(murders$region)

# obtaining the levels of a factor
levels(murders$region)


# SORTING


library(dslabs)
data(murders)
sort(murders$total)

x <- c(31, 4, 15, 92, 65)
x
sort(x)    # puts elements in order
index <- order(x)    # returns index that will put x in order
x[index]    # rearranging by this index puts elements in order
order(x)

murders$state[1:10]
murders$abb[1:10]
index <- order(murders$total)

murders$abb[index]    # order abbreviations by total murders
max(murders$total)    # highest number of total murders

i_max <- which.max(murders$total)    # index with highest number of murders
murders$state[i_max]    # state name with highest number of total murders

x <- c(31, 4, 15, 92, 65)
x
rank(x)    # returns ranks (smallest to largest)
