############################################################
# Aurthor : Tian
# Description: An implementation of RRBS version FEM
############################################################

library("methylKit")
library("genomation")

message("Prepare RNA-seq Results")
DEG <- read.csv("../6.IntergrateRNAseq/External/deseq2-HF-M56-annotated.diffexpr-results.csv", as.is=TRUE)
rownames(DEG) <- DEG$gene_id

message("Prepare PPI Network")
load("./Data/ppi.rda")

message("Prepare DMP-related Genes")
load("../6.IntergrateRNAseq/Data/AllProbe_ExpandedGene.rda")
load("../6.IntergrateRNAseq/Data/AllProbe_Promoter.rda")

DMPGeneList <- list(AllProbe.ExpandedGene, AllProbe.Promoter)
pheno.v <- c("WT", "WT", "WT", "Mutation", "Mutation" ,"Mutation")
names(DMPGeneList) <- c("AllProbeExpandedGene", "AllProbePromoter")

source("./RunRRBSFEM.R")

if (!file.exists("./Data")) dir.create("./Data")

break

for(i in names(DMPGeneList))
{
    message("Calculating ", i)
    FEMResult <- RunRRBSFEM(DMPGeneList[[i]], pheno.v)
    save(FEMResult, file=paste0("./Data/", i , '_FEMResult.rda'))
}

for(i in names(DMPGeneList))
{
    library("marray")
    library("corrplot")
    source("./myFemModShow.R")
    
    if (!file.exists("./Figure")) dir.create("./Figure")
    if (!file.exists(paste0("./Figure/",i))) dir.create(paste0("./Figure/",i))
    load(paste0("./Data/", i, "_FEMResult.rda"))
    setwd(paste0("./Figure/",i,"/"))
    for(i in names(FEMResult$topmod)) FemModShow(FEMResult$topmod[[i]], name=i, FEMResult)
    setwd("../../")
}


# library("marray")
# library("corrplot")
# source("./myFemModShow.R")

# if (!file.exists("./Figure")) dir.create("./Figure")
# if (!file.exists("./Figure/AllProbeExpandedGene")) dir.create("./Figure/AllProbeExpandedGene")
# setwd("./Figure/AllProbeExpandedGene/")
# for(i in names(FEMResult$topmod)) FemModShow(FEMResult$topmod[[i]], name=i, FEMResult)
# setwd("../../")


# if (!file.exists("./Figure")) dir.create("./Figure")
# if (!file.exists("./Figure/AllProbePromoters")) dir.create("./Figure/AllProbePromoters")
# setwd("./Figure/AllProbePromoters/")
# for(i in names(FEMResult$topmod)) FemModShow(FEMResult$topmod[[i]], name=i, FEMResult)
# setwd("../../")

