# 4.DMPVis

Generate bar plot enriched by DMPs. And draw volcano plot based on that.

1. GeneFeatureBP.R: The function wrote to draw gene feature plot based on a differential CpG matrix (data.frame format), and a gff (genomation loaded) GRange object.

> Nick Notice, if you have other annotation, for example only for certain protein groups, you can change the gff parameter.

Note that the promoter is calculated based on promoters function from GenomicRanges package, with default parameter, so the range is 2000 upstream of gene start site, and 200 downstream of it.

2. VolcanoPlot.R: The script used to draw volcano plot.

> Nick Notice, as above, you can assign different annotation, in Grange format.

3. ExpandGeneRange.R: A function to expand gene ranges, expand gene ranges from annotation labelled start/end to a 2000 bp upstream promoter.

## Figure folder:

1. DMPVolcanoPlot.pdf: Volcan plot, with top significant CpG's related gene (if mapped) labelled.

2. GeneFeatureBarplot.pdf: Number of DMPs mapped on corresponding gene feature.
