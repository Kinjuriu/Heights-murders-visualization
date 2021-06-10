# The function rank

rank(x)
# The function rank() gives us the ranks of the items in the original vector.
# Access the state variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states)

# Report the first alphabetical value  
states[1]
states
murders$state[which.max(murders$population)]
max(murders$population)

# With over 37 million inhabitants, it might be unfair to compare California to other states.
# What we really should be computing is the murders per capita.
# Here, the powerful vector arithmetic capabilities of R come in handy.
heights <- c(66, 62, 66, 70, 70, 73, 67, 73, 67, 70)

# convert to cm by multiplying
heights* 2.54

# lets say average is 69 inches
heights - 69

murder_rate <- murders$total/ murders$population*100000
murder_rate

murders$state[order(murder_rate, decreasing = TRUE)]
index <- murder_rate < 0.71
index <- murder_rate <= 0.71
index
# Vectors can be indexed with logicals
# defining murder rate as before


murder_rate <- murders$total / murders$population * 100000
# creating a logical vector that specifies if the murder rate in that state is less than or equal to 0.71
index <- murder_rate <= 0.71

# determining which states have murder rates less than or equal to 0.71
murders$state[index]

# calculating how many states have a murder rate less than or equal to 0.71
sum(index)

# creating the two logical vectors representing our conditions
west <- murders$region == "West"
safe <- murder_rate <= 1

# defining an index and identifying states with both conditions true
index <- safe & west
murders$state[index]
index <- which(murders$state == 'Massachusetts')
index

# to determine the murder rate in Massachusetts we may do the following
index <- which(murders$state == "Massachusetts")
index
murder_rate[index]

# to obtain the indices and subsequent murder rates of New York, Florida, Texas, we do:
index <- match(c("New York", "Florida", "Texas"), murders$state)
index
murders$state[index]
murder_rate[index]

x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x

# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state

install.packages("dplyr")
library(dplyr)

murders <- mutate(murders, rate=total/population*100000)
head(murders)

filter(murders, rate <= 0.71)
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

# We use the pipe for dplyr function
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)


hist(murders$rate)


boxplot(rate~region, data=murders)

