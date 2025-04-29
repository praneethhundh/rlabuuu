
data(iris)
str(iris)
model <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model)
install.packages("ggplot2") 
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", col = "blue", se = FALSE) +
  ggtitle("Simple Linear Regression: Sepal.Length vs Petal.Length") +
  xlab("Sepal Length") +
  ylab("Petal Length") +
  theme_minimal()
