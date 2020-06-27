#install packages
install.packages(pkgs = c("pheatmap", "RColorBrewer"),
                 dependencies = T)

#load the following packages
library(pheatmap)
library(RColorBrewer)

#proteases
data <- read.csv("https://raw.githubusercontent.com/julianademorais/melanoma-proteases/master/R/melanoma-proteases-data.csv")

#rename rows after attriubtes
rownames(data) <- data[,1]

#strip attribute column out
data2 <- data[,-1]

pheatmap(data2, scale="row", cluster_rows=TRUE, cluster_cols=TRUE, 
         legend = TRUE, show_colnames=TRUE, fontsize=16, fontface="bold", col=inferno(256))


#-----------------------------------------------------------------------------------------------------------------------------#

#inhibitors
data <- read.csv("https://raw.githubusercontent.com/julianademorais/melanoma-proteases/master/R/melanoma-inhibitor-data.csv")

#rename rows after attriubtes
rownames(data) <- data[,1]

#strip attribute column out
data2 <- data[,-1]

pheatmap(data2, scale="row", cluster_rows=TRUE, cluster_cols=TRUE, 
         legend = TRUE, show_colnames=TRUE, fontsize=16, fontface="bold", col=inferno(256))
