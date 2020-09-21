# 9.FEM

This is script for doing FEM calculation on RRBS data. For algorithm detail, please read https://pubmed.ncbi.nlm.nih.gov/24794928/

> Nick Notice: If you used results from this folder, you MUST add FEM pacakge and it's paper into citation list.

1. GenStatM.R: The function to generate statistic results for methylation gene.

2. PreparePPI.R: A script to prepare PPI network for all species.

3. RunRRBSFEM.R: A function to run RRBS, take DMP-related gene list as input.

4. myDoFEMbi.R: Function I modified from FEM, to calculate FEM module.

5. myFemModShow.R: Function I modified from FEM, to plot modules.

## Figure folder:

1. Figure/AllProbeExpandedGene: All plot for modules generate by all CpG mapped expanded gene list.

2. Figure/AllProbePromoter: All plot for modules generate by all CpG mapped promoter list.
