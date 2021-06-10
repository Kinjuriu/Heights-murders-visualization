library(dslabs)
data(heights)

summary(heights$height)

p <- seq(0.01, 0.99, 0.01)
percentiles <- quantile(heights$height, p)
p

percentiles[names(percentiles) == "25%"]
percentiles[names(percentiles) == "75%"]
summary(p)
mu <- 0
sigma<- 1
qnorm(p, mu, sigma)
qnorm(p)


p <- seq(0.01, 0.99, 0.01)
theoretical_quantiles <- qnorm(p, 69, 3)
p

index <- heights$sex=="Male"
x <- heights$height[index]
z <- scale(x)
mean(x <= 69.5)
p <- seq(0.05, 0.95, 0.05)


observed_quantiles <- quantile(x, p)
theoretical_quantiles <- qnorm(p, mean = mean(x), sd = sd(x))
plot(theoretical_quantiles, observed_quantiles)
abline(0, 1)

# Male heights follow a normal distribution,
# with an average of 69.44 inches, and a standard deviation of 3.27 inches.
