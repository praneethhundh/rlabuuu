install.packages("ggplot2")
install.packages("tidyverse")
# Step 1: Load data from CSV
house_data <- read.csv("C:\\Users\\prane\\OneDrive\\Desktop\\house-prices.csv")
library(ggplot2)
library(tidyverse)
# Step 2: View structure of dataset
str(house_data)

# Step 3: Select relevant numeric columns for PCA
house_numeric <- house_data[, c("Price", "SqFt", "Bedrooms", "Bathrooms", "Offers")]

# Step 5: Handle missing values
house_numeric <- na.omit(house_numeric)

# Step 6: Scale the data
scaled_data <- scale(house_numeric)

# Step 7: Perform PCA
pca_result <- prcomp(scaled_data, center = TRUE, scale. = TRUE)

# Step 8: PCA Summary
summary(pca_result)

# Step 8: Scree plot to visualize variance
plot(pca_result, type = "l", main = "Scree Plot - PCA on House Data")

# Step 9: Biplot (optional but useful)
biplot(pca_result, main = "PCA Biplot")
