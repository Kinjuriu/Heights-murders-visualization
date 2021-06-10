library(dslabs)
data(heights)


# the distribution simply describes the proportions of each unique category.
# For example, the sex represented in the heights data set
# can be summarized by the proportions of each of the two categories,female and male.

prop.table(table(heights$sex))
# Cumulative distribution function: Defining a distribution for numerical data...
# is to define a function that reports the proportion of the data 
# The formula is F(a)= Proportion/ Probability (x less than or equal to a)


a <- seq(min(my_data), max(my_data), length = 100)   
cdf_function <- function(x) {
  mean(my_data <= x)
}


cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values)
# Let's compute the average and the standard deviation
# for the male heights, which we will store in an object called x using this code.


index <- heights$sex == "Male"
x <- heights$height[index]
average <- mean(x)
SD <- sd(x)
c(average=average, SD=SD)
z <- scale(x)
z

mean(abs(z) < 2)
# what is the probability that a randomly selected
# student is taller than 70.5 inches.
# We just need the average height and the standard deviation.


1 - pnorm(70.5, mean(x), sd(x))
# we could consider our adult data categorical with each specific height a unique category.
#The probability distribution would then be
# defined by the proportion of students reporting each of those unique heights.


plot(prop.table(table(x)), xlab = "a = Height in inches", ylab = "Pr(x=a)")
#  the normal distribution is useful for approximating the proportion of students
# reporting between 69.5 and 70.5.


mean(x <= 68.5) - mean(x <= 67.5)
mean(x <= 69.5) - mean(x <= 68.5)
mean(x <= 70.5) - mean(x <= 69.5)
# Now look at what we get when we use the approximation.


# We get almost the same values.
pnorm(68.5, mean(x), sd(x)) - pnorm(67.5, mean(x), sd(x))
pnorm(69.5, mean(x), sd(x)) - pnorm(68.5, mean(x), sd(x))
pnorm(70.5, mean(x), sd(x)) - pnorm(69.5, mean(x), sd(x))
# However, the approximation is not that useful for other intervals.


# For example, those that don't include an integer.
mean(x <= 70.9) - mean(x <= 70.1)


pnorm(70.9, mean(x), sd(x)) - pnorm(70.1, mean(x), sd(x))
# look at the approximations now with the normal distribution.
#They're not that good. In general, we call this situation discretization.
# Although the true height distribution is continuous,
# the reported heights tend to be more common at discrete values,in this case, due to rounding.


# QUESTION

# What proportion of the data is between 69 and 72 inches 
# (taller than 69 but shorter or equal to 72)? A proportion is between 0 and 1.
x <- heights$height[heights$sex == "Male"]
mean(x > 69 & x <= 72)


# Use the normal approximation to estimate the proportion 
# of the data that is between 69 and 72 inches
avg <- mean(x)
stdev <- sd(x)
pnorm(72, avg, stdev) - pnorm(69, avg, stdev)


## Use normal approximation to estimate the proportion of heights between 79 and 81 inches 
# and save it in an object called approx.
avg <- mean(x)
stdev <- sd(x)
exact <- mean(x>79 & x<=81)
approx <- pnorm(81, avg, stdev) - pnorm(79, avg, stdev)
exact/approx


# Using the normal approximation, estimate the proportion of adult men that are 
# taller than 7 feet, referred to as seven footers. Remember that 1 foot equals 12 inches.
avg <- 69
sd <- 3
1 - pnorm(84, avg, sd)



# We know that there are about 1 billion men between the ages of 18 and 40 in the world, 
# the age range for the NBA.
# Can we use the normal distribution to estimate how many of these 
# 1 billion men are at least seven feet tall?
p <- 1 - pnorm(7*12, 69, 3)
round(p * 10^9)
?proportions


# calculate the proportion of the world's 18 to 40 year old seven footers that are in the NBA. 
p <- 1 - pnorm(7*12, 69, 3)
N <- round(p * 10^9)
10/N


# Repeat the calculations performed in the previous question for Lebron James' height: 
# 6 feet 8 inches. There are about 150 players, instead of 10, 
# that are at least that tall in the NBA.

p <- 1 - pnorm(6*12 + 8, 69, 3)
N <- round(p * 150)
150/N