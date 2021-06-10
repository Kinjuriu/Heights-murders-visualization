# CREATING MY OWN FUNCTIONS

# example of defining a function to compute the average of a vector x
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

# we see that the above function and the pre-built R mean() function are identical
x <- 1:100
identical(mean(x), avg(x))

# variables inside a function are not defined in the workspace
s <- 3
avg(1:10)
s
# the general form of a function
# my_function <- function(VARIABLE_NAME){
#  perform operations on VARIABLE_NAME and calculate VALUE
#  VALUE
#  }
# functions can have multiple arguments as well as default values
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}

# FOR LOOPS

# creating a function that computes the sum of integers 1 through n
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}
# a very simple for-loop
for(i in 1:5){
  print(i)
}
# a for-loop for our summation
m <- 25
s_n <- vector(length = m) # create an empty vector
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}
# creating a plot for our summation function
n <- 1:m
plot(n, s_n)
# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n*(n+1)/2))
# overlaying our function with the summation formula
plot(n, s_n)
lines(n, n*(n+1)/2)





# define variables and write expressions with these variables
a<- 2
b <- -1
c<- -4
print (a)
ls()

# What are the two solutions to  2𝑥2 −𝑥−4=0?

# Use the quadratic formula for solutions

soln<- (-b - sqrt((b^2)-(4*a*c)))/ (2*a)
print("soln is")
print(soln)
rootis<- sqrt((b^2)-(4*a*c))
print(rootis)
(-b-sqrt(b^2-4*a*c))/ (2*a)
(2*(0.3^2)-0.37-4)
(2*(-0.37^2)+0.37-4)

help("log")
log(1024, 4)

a <- 0
ifelse(a>0, 1/a, NA)
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)
a <- 0
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}

if(a!=0){
  print(1/a)
} else{
  print ("No reciprocal for 0.")
}

data("na_example")
sum(is.na(na_example))

no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))

z<- c(TRUE, TRUE, FALSE)
any(z)

z<- c(FALSE, FALSE, FALSE)
any(z)

z<- c(TRUE, TRUE, FALSE)
all(z)

z<- c(TRUE, TRUE, TRUE)
all(z)

z <- c(TRUE, TRUE, FALSE)
any(z)

all(z)

avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}
x <- 1:100
avg(x)
identical(mean(x), avg(x))
s <- 3
avg(1:10)
s
compute_s_n <- function(n) {
  x <- 1:n
  sum(x)
}

compute_s_n(3)
compute_s_n(100)
compute_s_n(2017)
for (i in 1:5) {
  print(i) 
}

i
m <- 25
# create an empty vector
s_n <- vector(length = m)
for (n in 1:m) {
  s_n[n] <- compute_s_n(n)
}

n <- 1:m
plot(n, s_n)
plot(n, s_n)
lines(n, n*(n+1)/2)