#!/bin/bash


# for short read qc

mamba create -n read_qc -y 
mamba activate read_qc
mamba install -c bioconda fastqc fastp multiqc

mkdir hg001_fastqc_out
fastqc HG001.fastq -o hg001_fastqc_out -t 4


mamba deactivate



#for long read qc
mamba create -n nanoplot -y
mamba activate nanoplot
mamba install nanoplot


NanoPlot -t 8 --fastq HG001.fastq  --maxlength 17000 -o hg001_out 

mamba deactivate
