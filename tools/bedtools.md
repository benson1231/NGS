# BEDtools Cheatsheet

**Author**: Chin-Yu Lee  
**Update**: 2025.1.27
**Reference**: [BEDtools GitHub](https://github.com/arq5x/bedtools2)

---

## Table of Contents
1. [BEDtools Intersect](#bedtools-intersect)
2. [BAM to BED Conversion](#bam-to-bed-conversion)
3. [BED to BAM Conversion](#bed-to-bam-conversion)
4. [Extracting FASTA Sequences from BED Regions](#extracting-fasta-sequences-from-bed-regions)

---

### 1. BEDtools Intersect
The `bedtools intersect` command identifies overlapping features between two files.

#### Examples:
```bash
# Find overlaps between RefSeq exons (RefSeq.gtf) and Alu annotations (Alus.bed)
bedtools intersect -a RefSeq.gtf -b Alus.bed -wo

# Treat each block in BED12 format as a separate interval
bedtools intersect -a RefSeq.bed -b Alus.bed -wo -split

# Include all features, even those with no overlaps
bedtools intersect -a RefSeq.bed -b Alus.bed -wao
```

---

### 2. BAM to BED Conversion
The `bedtools bamtobed` command converts BAM files to BED format.

#### Examples:
```bash
# Convert BAM to BED and add the CIGAR string as the seventh column
bedtools bamtobed -i sample.bam -cigar > sample.bed

# Use the `-split` option to split spliced alignments into individual exon blocks
bedtools bamtobed -i sample.bam -split > sample_split.bed
```

---

### 3. BED to BAM Conversion
The `bedtools bedtobam` command converts BED files to BAM format.

#### Examples:
```bash
# Convert BED to BAM using a genome header file (contains chromosome lengths)
bedtools bedtobam -i sample.bed -g genome_header.txt > sample.bam

# Use the `-bed12` option to preserve exon blocks in BED and write CIGAR strings to BAM
bedtools bedtobam -i sample.bed -g genome_header.txt -bed12 > sample_exon.bam
```

---

### 4. Extracting FASTA Sequences from BED Regions
The `bedtools getfasta` command extracts FASTA sequences for specified regions in a BED file.

#### Examples:
```bash
# Extract FASTA sequences for regions specified in a BED file
bedtools getfasta -fi genome.fa -bed regions.bed -fo output.fasta

# Use the `-split` option to extract and merge exon regions
bedtools getfasta -fi genome.fa -bed exons.bed -fo exons_output.fasta -split
```

---

This cheatsheet provides concise usage examples for common BEDtools commands, making it an essential reference for bioinformatics workflows. For detailed documentation, visit the [official BEDtools documentation](https://bedtools.readthedocs.io/).

