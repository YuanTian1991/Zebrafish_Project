############################################################
# Aurthor : Tian 
# Description: A Script for Visualise DMP
############################################################

library("methylKit")
library("GenomicRanges")
library("genomation")
library("ggplot2")

message("Loading Annotation")
gff <- gffToGRanges("../3.DMP/Danio_rerio.GRCz11.98.gtf.gz")

message("Loading DMP.")
load("../3.DMP/Data/myDiff.rda")
myDiff15p <- getData(getMethylDiff(myDiff, difference = 15, qvalue = 0.05))

message("Draw Gene Feature Barplot")
source("./GeneFeatureBP.R")
GeneFeatureBP(myDiff15p, gff)

message("Draw Volcano Plot")
source("./VolcanoPlot.R")
VolcanoPlot(myDiff, gff)

