# 6.IntergrateRNAseq

Integrating analysis between differential methylation and differential expression. The key thing here doing to mapping methylation data to genes, and generated gene's methylation value, which could be used in following analysis.

> Nick Notice: If you want to see specific gene's methylation status, you can find information here.

## csv folder:

1. AllProbe_Annotated_by_ExpandedGenes.csv: All probe annotated expanded gene's information.

2. DMP_Annotated_by_ExpandedGenes.csv: DMP annotated expanded gene's information.

3. AllProbe_Annotated_by_Promoter.csv: All probe annotated promoter's information.

4. DMP_Annotated_by_Promoter.csv: DMP annotated promoter's information.

5. AllProbe_Related_ExpandedGenes.csv: Expanded Genes related to all probes.

6. DMP_Related_ExpandedGenes.csv: Expression genes related to all DMPs.

7. AllProbe_Related_Promoters.csv: Promoters related to all probes.

8. DMP_Related_Promoters.csv: Promoters related to all DMPs.

## Data folder:

1. AllProbe_ExpandedGene.rda: R object for mapping result between all probes and expanded genes.

2. DMP_ExpandedGene.rda: R object for mapping result between DMPs and expanded genes.

3. AllProbe_Promoter.rda: R object for mapping result between all probes and promoters.

4. DMP_Promoter.rda: R object for mapping results between DMPs and promoters.

## Figure folder:

1. AtLeast5DMPEnrichedExpandedGene.pdf: heatmap of DNA methylation value for all genes enriched by at least 5 CpGs. Note that gene ranges are expanded to upstream 2000. 

2. CpGGeneScatterPlot_Labeled.pdf: Scatter plot between beta value differential beta value for CpGs, and log2FC from gene expression value. With all CpGs in promoter labelled.

3. AtLeast5DMPEnrichedPromoter.pdf: Heatmap of DNA methylation value from all promoters enriched by at least 5 CpGs. Promoter range is calcuated from promoters function.

4. CpGGeneScatterPlot.pdf: Scatter plot between beta value differential beta value for CpGs, and log2FC from gene expression value.
