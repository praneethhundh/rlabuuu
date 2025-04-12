# Step 1: Load iris dataset
data(iris)

# Step 2: Prepare the data (remove species column for clustering)
iris_data <- iris[, -5]

# Step 3: Scale the data
iris_scaled <- scale(iris_data)

# Step 4: Apply K-Means clustering (we'll use 3 clusters)
set.seed(123)  # for reproducibility
kmeans_result <- kmeans(iris_scaled, centers = 3, nstart = 25)

# Step 5: Add cluster results to original data
iris$Cluster <- as.factor(kmeans_result$cluster)

# Step 6: Visualize clusters with ggplot2
install.packages("ggplot2")  # Run only if not installed
library(ggplot2)

# Plot using first two principal components for visualization
pca_result <- prcomp(iris_scaled)

pca_df <- as.data.frame(pca_result$x[, 1:2])
pca_df$Cluster <- iris$Cluster
pca_df$Species <- iris$Species  # Optional: for comparison

ggplot(pca_df, aes(x = PC1, y = PC2, color = Cluster)) +
  geom_point(size = 3) +
  ggtitle("K-Means Clustering (3 Clusters) on Iris Dataset") +
  xlab("Principal Component 1") +
  ylab("Principal Component 2") +
  theme_minimal()
