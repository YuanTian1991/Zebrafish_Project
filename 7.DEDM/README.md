# 7.DEDM

This is the scripts to find both differential methylation and differential expression genes.

The cutoff for Differential Expression Gene is: with padj: 0.05, |log2FC| >= 2, baseMean >=10

The cutoff for methylation is q value 0.05, |meth.diff| >= 15

1. PlotDEDMHeatmap.R: A script to plot heatmap, it requires joined DEDM object, and TPM matrix users could specify labelName parameter to just show some gene's name instead of all.

> Nick Notice: In line 63 and line 55 in main.R script, please reset the genes you want to plot, but before you do that, please check the gene you want to labeled can be find in ./csv/DEDM.csv

## csv folder:

1. DEDM.csv: Information for differential methylation and differential expression genes.

2. StrictDEDM.csv: Save as above, but only genes with at least 5 CpGs enriched.

> Nick Notice: I just in charge of generating the list, you need to check these genes.


## Figure folder:

1. DEDMHeatmap_custom_label.pdf: Heatmap for DEDM csv file

2. StrictDEDMHeatmap_custom_label.pdf: Heatmap for StrictDEDM csv file

3. HyperVennPlot.pdf: Venn plot between Hyper genes and Up- and Down- regulated.

4. StrictDEDMHeatmap_full_label.pdf : Heatmap with all genes labelled

5. HypoVennPlot.pdf: Venn plot between Hypo genes and Up- and Down- regulated. 

