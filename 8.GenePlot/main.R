############################################################
# Aurthor : Tian
# Description: Generate Nice gene plot for between Expression and Methylation Data
############################################################

library("methylKit")
library("genomation")

source("../4.DMPVis/ExpandGeneRange.R")
source("./WriteOutPval.R")

message("Prepare TPM Matrix")
TPM <- read.csv("../5.GlobalIntegration/External/TPM.tsv", sep = "\t", as.is = T)
rownames(TPM) <- TPM$gene_id

message("Prepare Phenotype Data")
tpmPD <- c("Mutation", rep("WildType", 5), rep("Mutation", 5))
methPD <- c(rep("WildType",3), rep("Mutation", 3))

message("Prepare Methylation Diff Information")
load("../3.DMP/Data/myDiff.rda")
load("../3.DMP/Data/filteredBeta.rda")

myDiff15p <- getData(getMethylDiff(myDiff, difference=15, qvalue=0.05))
message("!Important, keey beta matrix filtered with DMP")
rownames(filteredBeta) <- rownames(myDiff)
beta15p <- filteredBeta[rownames(myDiff15p),]

message("Prepare RNA-seq Results")
DEG <- read.csv("../6.IntergrateRNAseq/External/deseq2-HF-M56-annotated.diffexpr-results.csv", as.is=TRUE)
rownames(DEG) <- DEG$gene_id

message("Prepare DMP-related Gene Information")
load("../6.IntergrateRNAseq/Data/DMP_ExpandedGene.rda")
DMG <- DMP.ExpandedGene$Genes[DMP.ExpandedGene$Genes$EnrichNumber >= 5, ]
DMG <- DMG[order(DEG[rownames(DMG), "padj"]), ]

message("Preparing Annotation")
gff <- gffToGRanges("../3.DMP/Danio_rerio.GRCz11.98.gtf.gz")
grl <- as(split(gff, gff$type), "GRangesList")
anno <- grl[['gene']]
source("../4.DMPVis/ExpandGeneRange.R")
expandedGenes <- ExpandGeneRange(anno)

message("Plot all DMGs")
source("./GenePlot.R")

if (!file.exists("./Figure")) dir.create("./Figure")
graphics.off()
pdf("./Figure/AtLeast5DMPEnrichedExpendedGenes.pdf", width = 12, height = 4)
for(i in DMG$gene_id){
    GenePlot(myDiff15p, beta15p, TPM, DMG, expandedGenes, i)
}
dev.off()


message("Plot only Crumbs related Genes")
CrumbsGene <- read.table("./External/CrumbsGene.txt",header=T)
CrumbsGeneIndex <- intersect(CrumbsGene$ensemblid, DMG$gene_id)

if (!file.exists("./Figure")) dir.create("./Figure")
graphics.off()
pdf("./Figure/AtLeast5DMPEnrichedExpendedGenes_Crumbs.pdf", width = 12, height = 4)
for(i in CrumbsGeneIndex){
    GenePlot(myDiff15p, beta15p, TPM, DMG, expandedGenes, i)
}
dev.off()

