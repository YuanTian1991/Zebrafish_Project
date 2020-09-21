############################################################
# Aurthor : Tian
# Description: An implementation of RRBS version FEM
############################################################

library("methylKit")
library("genomation")

message("Prepare RNA-seq Results")
DEG <- read.csv("../6.IntergrateRNAseq/External/deseq2-HF-M56-annotated.diffexpr-results.csv", as.is=TRUE)
rownames(DEG) <- DEG$gene_id

message("Prepare DMP-related Genes")
load("../6.IntergrateRNAseq/Data/AllProbe_ExpandedGene.rda")

message("Prepare All Probe mapped mean gene Beta Matrix")
data.m <- AllProbe.ExpandedGene$Genes$MeanBeta
rownames(data.m) <- rownames(AllProbe.ExpandedGene$Genes)
pheno.v <- c("WT", "WT", "WT", "Mutation", "Mutation" ,"Mutation")

source("./GenStatM.R")
SM <- GenStatM(data.m, pheno.v)

message("Prepare data for FEM function.")
statM <- SM$top[[1]][,c('t', 'P.Value')]
statR <- DEG[,c('stat','pvalue')]
load("./Data/ppi.rda")

commonGene <- intersect(rownames(statM), rownames(ppi))
commonGene <- commonGene[which(!is.na(statM[commonGene,1]) & !is.na(statR[commonGene,1]))]

library('FEM')
intFEM.o <- list(statM=statM[commonGene, ], statR=statR[commonGene, ],adj=ppi[commonGene,commonGene])

source("./myDoFEMbi.R")
FEMResult <- DoFEMbi(intFEM.o, nseeds=100,gamma=0.5,nMC=1000,sizeR.v=c(1,100), minsizeOUT=10,writeOUT=TRUE,nameSTUDY="Zebrafish-Crb2a",ew.v=NULL);

library("marray")
library("corrplot")

if (!file.exists("./Figure")) dir.create("./Figure")
setwd("./Figure")
for(i in names(FEMResult$topmod)) FemModShow(FEMResult$topmod[[i]], name=i, FEMResult)
setwd("..")

