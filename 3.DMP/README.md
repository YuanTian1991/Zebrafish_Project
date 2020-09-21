# 3.DMP

This step is applied to call DMP by methylkit software. Note that we discard CpGs with all 0 or all 1 methylation status. P value is adjusted for multiple test with q value.

Annotation (across this whole repo) is used only from ftp://ftp.ensembl.org/pub/release-98/gtf/danio_rerio/Danio_rerio.GRCz11.98.gtf.gz and with `genomation` R package.

## csv folder:

1. AnnotatedDMP.csv: fully annotated DMP information, contains 717343 lines. It included all CpGs (DMP or not), with their corresponding gene (if mapped).

## Data folder:

1. filteredBeta.rda: beta matrix remained after filter out uninformative CpGs.

2. filteredMeth.rda: meth matrix remained after filer out uninformative CpGs.

3. myDiff.rda: Differential Calling results, contains all CpGs, their significance p value, meth.diff .etc.

## Figure folder:

1. PvalueDistribution.pdf: The p value distribution from all CpGs.
