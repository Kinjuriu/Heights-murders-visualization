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


