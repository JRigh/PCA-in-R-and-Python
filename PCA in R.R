#----------------------------------------
# Principal Component Analysis - examples
#----------------------------------------

library(ggplot2)
library(factoextra)
library(FactoMineR)

# Load the diamonds dataset
set.seed(2023)
data <- iris
head(data)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa

# Perform PCA on quantitative variables
pca_result <- PCA(data[,c(1,2,3,4)], graph = FALSE)

# Plot the PCA results with clustering
fviz_pca_biplot(pca_result, 
                col.ind = data$Species, palette = "jco", 
                addEllipses = TRUE, label = "var",
                col.var = "black", repel = TRUE,
                legend.title = "Species") 
