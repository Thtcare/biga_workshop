## Basic Genomic Analysis 

High-throughput sequencing generates large amounts of data, which are typically saved in text files using formats like FASTQ or fastq. These formats are designed to store raw sequencing reads along with quality information, such as the accuracy of each nucleotide base call. 

The FASTQ format builds upon an earlier format known as FASTA, which was originally developed to represent nucleotide or protein sequences. The FASTA format contains only the sequence data itself, typically without any quality score information. 

To better understand, imagine that sequencing machines read DNA samples and output long strings of nucleotide bases (A, T, C, G). The FASTA format simply stores these sequences as text, but with no indication of how reliable the data is at each position. 

### Fasta format 

The ">" symbol indicates a sequence header (usually containing metadata about the sequence), and the following line is the actual sequence of nucleotides. 

In contrast, FASTQ format not only stores the nucleotide sequence but also includes a corresponding quality score for each base, which reflects the confidence that the sequencer has in each base call. 

### Fastq format 

#### In this case:

- The first line starts with "@" followed by the sequence identifier.
- The second line is the nucleotide sequence.
- The third line starts with "+" and may repeat the sequence identifier.
- The fourth line contains the ASCII-encoded quality scores for each base in the sequence.

### Phred Score Calculation Formula:

The Q score (Phred Quality Score) is calculated using the formula:

Q = -10 × log₁₀(P)

Where:
	•	P is the probability that a base call is incorrect.

### Examples of Phred Scores and Corresponding Error Probabilities:

| Phred Score (Q) | Probability of Incorrect Base Call (P) | Base Call Accuracy (%) |
|---------|-------------|---------|
| Q10 | 1 in 10 ($10^{-1}$) | 90% |
| Q20 | 1 in 100 ($10^{-2}$) | 99% |
| Q30 | 1 in 1000 ($10^{-3}$) | 99.9% |
| Q40 | 1 in 10,000 ($10^{-4}$) | 99.99% |
| Q50 | 1 in 100,000 ($10^{-5}$) | 99.999% |

---

## Significance of the Phred Score
- Used to assess the quality and reliability of NGS data.
- A Q score of 30 or higher is considered high quality.
- A Q score below 20 indicates a high probability of error and is generally considered low quality.

## Phred Scores in FASTQ Files
Phred scores are encoded in FASTQ files using ASCII characters to represent the Q score for each base in a DNA or RNA sequence.

To convert from ASCII to Phred Quality Score, use this simple formula:

        Phred score = ASCII value − 33



