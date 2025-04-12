# Get input from user
input <- readline(prompt = "Enter numbers separated by commas: ")

# Convert input to numeric vector
num_vector <- as.numeric(unlist(strsplit(input, ",")))

# Display the operations
cat("Numbers entered:", num_vector, "\n")
cat("Maximum:", max(num_vector), "\n")
cat("Minimum:", min(num_vector), "\n")
cat("Sum:", sum(num_vector), "\n")
cat("Average (Mean):", mean(num_vector), "\n")
cat("Square Root of each:", sqrt(num_vector), "\n")
cat("Rounded values:", round(num_vector), "\n")
