
install.packages(c("class",  "caret", "mlbench"), dependencies = TRUE)
library(class)
library(ggplot2)
library(caret)
library(mlbench)
data(PimaIndiansDiabetes)
dataset <- PimaIndiansDiabetes
normalize <- function(x) { (x - min(x)) / (max(x) - min(x)) }
dataset_norm <- as.data.frame(lapply(dataset[, 1:8], normalize))
dataset_norm$Outcome <- dataset$diabetes
set.seed(123)
index <- createDataPartition(dataset_norm$Outcome, p = 0.7, list = FALSE)
train <- dataset_norm[index, ]
test <- dataset_norm[-index, ]
train_labels <- train$Outcome
test_labels <- test$Outcome
train <- train[, -9]
test <- test[, -9]
knn_pred <- knn(train, test, cl = train_labels, k = 5)
print(confusionMatrix(knn_pred, test_labels))
results <- data.frame(Actual = test_labels, Predicted = knn_pred)
ggplot(results, aes(x = Actual, fill = Predicted)) +
  geom_bar(position = "dodge") +
  labs(title = "KNN Disease Prediction", y = "Count") +
  theme_minimal()
