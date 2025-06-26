install.packages("ggVennDiagram")

library(ggplot2)
library(VennDiagram) 


pdf("outputs/1746297903_massIR_mergeIR.pdf")

v<-draw.pairwise.venn(
  area1=82,
  area2=268,
  cross.area=5,
  category=c("massIR","mergeIR"),
  ext.percent=c(0,0,0),
  ext.dist=0,
  fill=c("darksalmon","hotpink3"),
  col=c("darksalmon","hotpink3"),
  alpha=c("0.5","0.5"),
  cat.dist=c(0.1,0.1),
  cat.fontfamily="Helvetica",
  fontfamily="Helvetica",
  cat.cex=2,
  margin=0.1,
  cex=2,
  lwd=1,
  scaled=TRUE)
grid.draw(v)
dev.off()

library("GeneOverlap")
c1 <- read.table("/tmp/phpdGdntX")
c2 <- read.table("/tmp/phpFPvqIz")
res <- testGeneOverlap(newGeneOverlap(c1[,1],c2[,1],24508))

