# RRBS-pipeline

This is the analysis pipline code of DNA methylation analysis and Integration work between RNA-seq and methylation, for XXXXXX (change into paper title). We orgnized our code here for reviewers and following reseachers to validate our analysis result. 

It takes NuGEN company generated bcl file as input. In number 1,2,3,4,... indicates the analysis sequence, please follow it, as some later analysis requires the formal analysis result.

In each folder, there is a R script called `main.R`, by running it in R session, in theory all results presented in this repo could be reproduced. Users need to install corresponding R packages, install corresponding R version (4.0.2).

All analysis in this repo are ONLY using Ensembl genome as genomic annotation ([version 98](ftp://ftp.ensembl.org/pub/release-98/)), except for CpG islands information used in ./5.GlobalIntegration, which is downloaded from USCS.
