# 2.Methylkit

The second step is using Methylkit software (R package version 1.14.2) to process bisMark mapped bam file.

We applied the default function as showed in [methylkit vignette](https://www.bioconductor.org/packages/release/bioc/vignettes/methylKit/inst/doc/methylKit.html). To firstly change Bismark mapped reads into CpG information.

Note that compared with default parameter, the `mincov` parameter (indicates CpG coverage) is 7, and `minqual` (indicates quality) is 20.

The `filterByCoverage()` is used to do filtering for CpGs with less than 7 reads, and CpGs with too much outlier number reads. The cutoff for top outlier `hi.perc` is 99.9.

beta matrix is generated without offset.

## Data Folder:

1. beta.rda: beta matrix generated for all 6 samples, which contains 746647 CpGs.

2. meth.rda: meth object defined by methylkit, used to calcualte DMP later, which contains 746647 CpGs.

3. myobj.rda: raw methylkit object.

## Figure Folder:

1. DensityPlot.pdf: Density of CpG methylation across all sites for all 6 samples.

2. CoveragePlot.pdf: CpG coverage of CpG methylation across all sites for all 6 samples.

3. FilteredCoveragePlot.pdf: CpG coverage of CpG methylation across all sites for all 6 samples after filtering and coverage adjustment

