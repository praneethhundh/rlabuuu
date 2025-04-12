# Step 1: Install and Load Required Packages
install.packages(c("arules", "arulesViz"), dependencies = TRUE)
library(arules)
library(arulesViz)

# Step 2: Load Example Data (Groceries)
data("Groceries")

# Step 3: Generate Association Rules using Apriori
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.3, minlen = 2))

# Step 4: View Summary and Top Rules
summary(rules) 
inspect(sort(rules, by = "lift")[1:10])

# Step 5: Visualize Rules
plot(rules, method = "graph", engine = "htmlwidget")
plot(rules, method = "grouped")
