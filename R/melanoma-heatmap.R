#install packages
install.packages(pkgs = c("pheatmap", "RColorBrewer", "viridis"),
                 dependencies = T)

#load the following packages
library(pheatmap)
library(RColorBrewer)
library(viridis)

#proteases
data <- read.csv("https://raw.githubusercontent.com/julianademorais/melanoma-proteases/master/R/melanoma-proteases-data.csv")

rownames(data) <- data[,1]

data2 <- data[,-1]

pheatmap(data2, scale="row", cluster_rows=TRUE, cluster_cols=TRUE, 
         legend = TRUE, show_colnames=TRUE, fontsize=16, fontface="bold", col=inferno(256))


#-----------------------------------------------------------------------------------------------------------------------------#

#inhibitors
data <- read.csv("https://raw.githubusercontent.com/julianademorais/melanoma-proteases/master/R/melanoma-inhibitor-data.csv")

rownames(data) <- data[,1]

data2 <- data[,-1]

pheatmap(data2, scale="row", cluster_rows=TRUE, cluster_cols=TRUE, 
         legend = TRUE, show_colnames=TRUE, fontsize=16, fontface="bold", col=inferno(256))
