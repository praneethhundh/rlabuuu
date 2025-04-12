# Get dimensions of the matrix from user
rows <- as.integer(readline(prompt = "Enter number of rows: "))
cols <- as.integer(readline(prompt = "Enter number of columns: "))

# Input first matrix
cat("Enter elements of Matrix A (row-wise):\n")
vecA <- as.numeric(unlist(strsplit(readline(), ",")))
matA <- matrix(vecA, nrow = rows, ncol = cols, byrow = TRUE)

# Input second matrix
cat("Enter elements of Matrix B (row-wise):\n")
vecB <- as.numeric(unlist(strsplit(readline(), ",")))
matB <- matrix(vecB, nrow = rows, ncol = cols, byrow = TRUE)

# Matrix Addition
add <- matA + matB

# Matrix Subtraction
sub <- matA - matB

# Matrix Multiplication
mul <- matA %*% matB  # Matrix multiplication (requires cols of A = rows of B)

# Element-wise Division
div <- matA / matB    # Element-wise division

# Transpose
transpose_A <- t(matA)
transpose_B <- t(matB)

# Inverse (only if matrix is square)
if (rows == cols) {
  inv_A <- tryCatch(solve(matA), error = function(e) "Not Invertible")
  inv_B <- tryCatch(solve(matB), error = function(e) "Not Invertible")
} else {
  inv_A <- "Not square"
  inv_B <- "Not square"
}

# Output results
cat("\nMatrix A:\n"); print(matA)
cat("\nMatrix B:\n"); print(matB)

cat("\nAddition:\n"); print(add)
cat("\nSubtraction:\n"); print(sub)
cat("\nMatrix Multiplication (A %*% B):\n"); print(mul)
cat("\nElement-wise Division (A / B):\n"); print(div)

cat("\nTranspose of Matrix A:\n"); print(transpose_A)
cat("\nTranspose of Matrix B:\n"); print(transpose_B)

cat("\nInverse of Matrix A:\n"); print(inv_A)
cat("\nInverse of Matrix B:\n"); print(inv_B)
