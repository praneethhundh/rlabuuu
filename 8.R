# Step 1: Load iris dataset
data(iris)
iris_data <- iris[, -5]
iris_scaled <- scale(iris_data)
set.seed(123) 
kmeans_result <- kmeans(iris_scaled, centers = 3, nstart = 25)
iris$Cluster <- as.factor(kmeans_result$cluster)
install.packages("ggplot2")  
library(ggplot2)
pca_result <- prcomp(iris_scaled)
pca_df <- as.data.frame(pca_result$x[, 1:2])
pca_df$Cluster <- iris$Cluster
ggplot(pca_df, aes(x = PC1, y = PC2, color = Cluster)) +
  geom_point(size = 3) +
  ggtitle("K-Means Clustering (3 Clusters) on Iris Dataset") +
  xlab("Principal Component 1") +
  ylab("Principal Component 2") +
  theme_minimal()
