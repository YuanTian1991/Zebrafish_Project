# 1.Preprocess

This folded contains codes related to data preprocessing, everything started with the folder indicates in line 12 in main.R.

Consecutively, it employ below software to finish preprocessing: bcl2fastq, trim_galore, parallel, bismark, samtools

Apart from above software, two NuGEN company specific scripts are used. The whole analysis process is followed by [NuGEN company provided pipeline](https://github.com/nugentechnologies/NuMetRRBS).

./strip_bismark_sam.sh is downloaded from https://github.com/nugentechnologies/NuMetRRBS/blob/master/strip_bismark_sam.sh

./nudup.py is downloaded from https://github.com/tecangenomics/nudup/blob/master/nudup.py

./trimRRBSdiversityAdaptCustomers.py is downloaded from https://github.com/nugentechnologies/NuMetRRBS/blob/master/trimRRBSdiversityAdaptCustomers.py

Zebrafish genome is downloaded from Ensemble, version 98: ftp://ftp.ensembl.org/pub/release-98/fasta/danio_rerio/dna/Danio_rerio.GRCz11.dna.primary_assembly.fa.gz
