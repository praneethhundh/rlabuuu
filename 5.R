# Sample data (you can modify or load from CSV)
data <- c(10, 15, NA, 25, 30, NA, 40, 50)

cat("Original Data:\n")
print(data)

# i) Handling Missing Data
# Option 1: Remove missing data
data_no_na <- na.omit(data)

# Option 2: Replace missing values with mean
mean_val <- mean(data, na.rm = TRUE)
data_fill_mean <- ifelse(is.na(data), mean_val, data)

cat("\nData after removing NA:\n")
print(data_no_na)

cat("\nData after replacing NA with mean:\n")
print(data_fill_mean)

# ii) Min-Max Normalization function
min_max_normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Normalize filled data
normalized_data <- min_max_normalize(data_fill_mean)

cat("\nMin-Max Normalized Data:\n")
print(normalized_data)
