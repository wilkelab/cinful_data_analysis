#install.packages("phylogram")
library(phylogram)

x <- read.dendrogram(text = "(((V,L),(PDI,S)),(E492,H47),(I47,M));")
plot(x, yaxt = "n")

x2 <- read.dendrogram(text = "((I47,M),(E492,H47),((PDI,S),(V,L)));")
plot(x2, yaxt = "n")

x3 <- read.dendrogram(text = "(((V:0.10594,L:0.86544)0.991:0.56692,(PDI:0.10770,S:0.11858)0.999:0.86785)0.634:0.04629,(I47:0.92054,M:0.29294)0.870:0.22816,(E492:0.81294,H47:0.64467)0.568:0.07789);")
x3 <- as.cladogram(x3)
plot(x3, horiz = TRUE,yaxt = "n")

y <- read.dendrogram(text = "(((((C,B1),A),E),D),((G,B2),F));")
y <- as.cladogram(y)
plot(y, yaxt = "n")
  
# Mash based analysis https://www.nature.com/articles/s42003-020-01626-5
y <- read.dendrogram(text = "(((((C,B1),A),E),(D,F)),(G,B2));")
y <- as.cladogram(y)
plot(y, yaxt = "n")

# https://sfamjournals-onlinelibrary-wiley-com.ezproxy.lib.utexas.edu/doi/pdfdirect/10.1111/1462-2920.14713
y <- read.dendrogram(text = "((((G,B2),F),D),(E,((B1,C),A)));")
y <- read.dendrogram(text = "((((C,B1),A),E),(D,((G,B2),F)));")
y <- as.cladogram(y)
plot(y, yaxt = "n")
