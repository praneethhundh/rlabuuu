# Get numeric input from user
input <- readline(prompt = "Enter numbers separated by commas: ")

# Convert input to numeric vector
num_vector <- as.numeric(unlist(strsplit(input, ",")))

# Mean
mean_val <- mean(num_vector)

# Median
median_val <- median(num_vector)

# Mode function (custom)
get_mode <- function(v) {
  uniqv <- unique(v)
  freq <- tabulate(match(v, uniqv))
  mode_val <- uniqv[freq == max(freq)]
  return(mode_val)
}
mode_val <- get_mode(num_vector)

# Standard Deviation
sd_val <- sd(num_vector)

# Print results
cat("Numbers entered:", num_vector, "\n")
cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
cat("Standard Deviation:", sd_val, "\n")
