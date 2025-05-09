# Step 1: Install and Load Required Packages
install.packages(c("arules", "arulesViz"), dependencies = TRUE)
library(arules)
library(arulesViz)
data("Groceries")
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.3, minlen = 2))
summary(rules) 
inspect(sort(rules, by = "lift")[1:10])
plot(rules, method = "graph", engine = "htmlwidget")
plot(rules, method = "grouped")
