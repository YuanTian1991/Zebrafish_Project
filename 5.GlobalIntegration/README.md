# 5.GlobalIntegration

This is the first work to integrate CpG information with RNA-seq and genome. It will calculate global correlation across all CpG sites and related gene expression TPM data.And it will plot CpG methylation different status around TSS and CpG Islands. Finally it will plot the CpG methylation beta value around TSS and CpG Islands.

> Nick Notice: Last time presentaion Stephan said that this could be the first global assessment of methylation status on Zebrafish, so I personally recommend you included this, and open a secion in paper for this. Of course, this is just personal recommendation.

1. CorMeth.R: The function to calculate correlation plot value from TPM and beta value.

2. DrawRegression.R: Plot the two line correlation plot from results of ./CorMeth.R

## External folder:

Files not generated from my code, but external.

1. cpgIslandExt.txt: CpG Island information downloaded from USCS.

2. TPM.tsv: TPM matrix provided by Nicholas Owen

## Figure Folder:

1. BetaAroundCpGIslands.pdf: Beta value group CpG island (upstream and downstream 2000). CpG Islands information is downloaded from USCS.

2. GlobalCorrelation.pdf: Correlation plot from all CpG's methylation and all gene's expression tpm.

3. MethDiffAroundTSS.pdf: Methylation difference around TSS. TSS is calcualted from genomation package `transcript` list.

4. BetaAroundTSS.pdf: Beta value around TSS.

5. MethDiffAroundCpGIsland.pdf: Methylation difference around CpG island (upstream and downstream 2000).
