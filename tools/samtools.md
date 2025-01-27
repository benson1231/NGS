# Samtools cheatsheet

**Author**: Chin-Yu Lee  
**Update**: 2025.1.27
**Reference**: https://github.com/samtools/samtools

---

## Table of Contents
1. [samtools view](#1-samtools-view)
2. [samtools flagstat](#2-samtools-flagstat)
3. [samtools sort](#3-samtools-sort)
4. [samtools index](#4-samtools-index)
5. [samtools merge](#5-samtools-merge)

---

### 1. samtools view
The `samtools view` command is used for converting and filtering SAM/BAM files. 

```bash
# SAM TO BAM conversion
samtools view -b -t example.fa.fai -o example.bam example.sam.gz
# BAM TO SAM conversion
samtools view -h -o example.sam example.bam

# View all alignments in SAM format (no header)
samtools view example.bam
# View all alignments with header included
samtools view -h example.bam
# View only the header of the BAM file
samtools view -H example.bam

# Extract alignments in a specific region (chromosome 1 from 1M to 2M)
samtools view example.bam 1:1000000-2000000 | head
# Extract alignments within regions specified in a BED file
samtools view -L example.bed example.bam
```

### 2. samtools flagstat
The samtools flagstat command provides a quick summary of alignment statistics.

```bash
samtools flagstat example.bam
```

### 3. samtools sort
The samtools sort command is used to sort BAM files for indexing or quick genomic range lookups.

```bash
samtools sort -o example.sorted.bam example.bam
```

### 4. samtools index
The samtools index command is used to create an index for sorted BAM files, enabling fast random access.

```bash
samtools index example.sorted.bam
```

### 5. samtools merge
The samtools merge command is used to combine multiple BAM files into one.

```bash
samtools merge -o example.bam example_bam1.bam example_bam2.bam
```