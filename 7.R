# Step 1: Load the iris dataset
data(iris)

# Step 2: View the structure of the dataset
str(iris)

# Step 3: Perform Simple Linear Regression
model <- lm(Petal.Length ~ Sepal.Length, data = iris)

# Step 4: View summary of the model
summary(model)

# Step 5: Plot the data and regression line using ggplot2
install.packages("ggplot2")  # Only run if ggplot2 isn't installed
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", col = "blue", se = FALSE) +
  ggtitle("Simple Linear Regression: Sepal.Length vs Petal.Length") +
  xlab("Sepal Length") +
  ylab("Petal Length") +
  theme_minimal()
