# Quality Control
Modern sequencing technologies can generate millions of reads in a single run, but no platform is entirely error-free. Inherent limitations can introduce issues such as basecalling errors, adapter contamination, or sample-specific artifacts. If left unchecked, these errors can significantly affect downstream analyses. That’s why performing a quality check on raw reads is a crucial first step—it helps detect and address problems early on.

<div align="center">
  <img src="https://github.com/user-attachments/assets/11758dad-636e-4331-a84e-8d8ab233d1da" width="400"/>
</div>

This aligns with the principle **“garbage in, garbage out”**: if poor-quality data enters your analysis pipeline, it can lead to misleading or incorrect conclusions. By ensuring your input data is clean and reliable, you increase the chances of producing accurate, meaningful results and a successful project outcome.

<div align="center">
  <img src="https://github.com/user-attachments/assets/2d92bd90-f6e3-4326-ae19-aec192324dae" width="700"/>
</div>

After the initial quality check, low-quality bases are trimmed, and short reads are removed to enhance the data quality. A second quality check is then performed to confirm that the remaining reads are of sufficient length and quality for further analysis. This ensures the data is reliable for subsequent steps.

# Fastqc
**FastQC** is a widely used tool that provides a comprehensive overview of basic quality control metrics for raw next-generation sequencing (NGS) data. It produces an HTML report that summarizes results across several modules, each flagged as **"Passed"**, **"Warning"**, or **"Failed"**. These assessments are primarily tailored for whole genome shotgun (WGS) sequencing and may not accurately reflect quality issues in other types of sequencing data. Importantly, a "Warning" or "Failed" flag doesn't always indicate a problem—researchers should interpret these results in the context of their specific experiment and sequencing strategy.

<div align="center">
<img src= "https://github.com/user-attachments/assets/06d9a476-446c-4451-8150-5e836702d04b" width="500"/>
</div>

### Parts of a standard FastQC report
- **Basic Statistics** – simple information about input FastQ file: name, type of quality score encoding, total number of reads, read length and GC content
- **Per base sequence quality** – shows a box-and-whisker plot of quality scores at each position across all reads. The X-axis is not uniform—bases 1–10 are shown individually, while later positions are grouped into windows based on read length (e.g., 5bp windows for 150bp reads). The **blue line** indicates the mean quality score, and the **red line** shows the median. The **yellow box** spans the interquartile range (25th to 75th percentile), and the **whiskers** mark the 10th and 90th percentiles. This plot helps identify base positions with lower quality.
- **Per sequence quality scores** – A plot of the total number of reads vs the average quality score over full length of that read. 
- **Per base sequence content** – This plot reports the percent of bases called for each of the four nucleotides at each position across all reads in the file. Again, the X-axis is non-uniform as described for Per base sequence quality. 
- **Per sequence GC content** – Plot of the number of reads vs. GC% per read. The displayed Theoretical Distribution assumes a uniform GC content for all reads. 
- **Per base N content** – Percent of bases at each position or bin with no base call, i.e. ‘N’.
- **Sequence Duplication Levels** – show the percentage of reads that appear multiple times in the file. The blue line represents this distribution. Duplicates can come from PCR amplification, which may bias the library, or from genuinely abundant sequences (e.g., highly expressed genes in RNA-Seq). PCR duplicates are a concern as they distort the original sample composition, while naturally abundant sequences are expected and not problematic.
- **Overrepresented Sequences** – List of sequences which appear more than expected in the file. Only the first 50bp are considered. A sequence is considered overrepresented if it accounts for ≥ 0.1% of the total reads. Each overrepresented sequence is compared to a list of common contaminants to try to identify it.  
- **Adapter Content** – Cumulative plot of the fraction of reads where the sequence library adapter sequence is identified at the indicated base position. Only adapters specific to the library type are searched. 
- **Kmer content** – measures the frequency of each short nucleotide sequence of length k (default = 7) across a read. It identifies biased kmers, or kmers that appear at certain positions more frequently than expected. This is useful for identifying possible biases in sequencing data, often due to factors like highly expressed sequences in RNA-seq libraries or shearing efficiency in DNA-Seq. The module reports the positions of the six most biased kmers. Although this module can be difficult to interpret, it helps to highlight areas in the data where sequence biases may affect results. For more detailed interpretation, it’s advised to refer to FastQC’s Kmer content documentation.

### Run FastQC
1. Activate fastqc environtment – activating environments is essential to making the software in the environments work well. 
```{bash}  
conda activate fastqc
```
2. Change directories to the raw_data folder and check the contents
```{bash}  
cd ~/workshop/data/
ls -l
```
3. Display FastQC usage information and available options.
```{bash}
fastqc --help
```

4. Run FastQC
  - Run FastQC on a single sequence file
  ```{bash}
    fastqc HG001.fastq.gz
  ```
&emsp;&emsp;This will generate a .html report and a .zip archive in the current directory, containing the quality control results for the file HG001_fastqc.gz

  - Run FastQC on multiple sequence files with a specific output directory and number of threads
```{bash}
fastqc HG001.fastq.gz HG002.fastq.gz -o output_qc -t 4
```
&emsp;&emsp;-o output_fastqc: specifies the output directory for the results. Make sure the output_fastqc directory exists before running the command.
&emsp;&emsp;-t 4: uses 4 threads to speed up the analysis
    
### Output Reports
FastQC generates comprehensive reports, including:
- HTML Report: An interactive HTML file summarizing all quality checks.
- Text Report: A detailed text file providing the raw data for each analysis.
- Zipped File: A compressed file containing all the outputs for easy sharing and storage.
