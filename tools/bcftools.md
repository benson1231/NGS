# BCFtools Cheatsheet

**Author**: Chin-Yu Lee 
**Update**: 2025.1.27  
**Reference**: [BCFtools GitHub](https://github.com/samtools/bcftools)

---

## Table of Contents
1. [BCFtools view](#bcftools-view)
2. [BCFtools call](#bcftools-call)

---

### 1. BCFtools view
The `bcftools view` command is used for converting and filtering BCF/VCF files.

#### Examples:
```bash
# View the content of a compressed BCF file and convert it to compressed VCF format
bcftools view -Oz -o output.vcf.gz input.bcf

# Use the `-O` option to specify output format:
# - `b`: Compressed BCF
# - `u`: Uncompressed BCF
# - `z`: Compressed VCF
# - `v`: Uncompressed VCF

# Filter by region, retaining only chr1 positions between 1,000,000 and 2,000,000
bcftools view -r chr1:1000000-2000000 -Oz -o region_filtered.vcf.gz input.bcf

# Filter using multiple regions specified in a file (in BED format)
bcftools view -R regions.bed -Oz -o file_filtered.vcf.gz input.bcf
```

---

### 2. BCFtools call
The `bcftools call` command is used for variant calling.

#### Examples:
```bash
# Perform variant calling using the `-m` algorithm for multi-allelic variant detection
bcftools mpileup -Ou -f reference.fa input.bam | bcftools call -mv -Oz -o output_variants.vcf.gz

# View the content of a compressed VCF file without decompression
zcat output_variants.vcf.gz | head -n 20

# Filter all variant lines (excluding headers) using `grep`
zcat output_variants.vcf.gz | grep -v "^#"
```

---

This cheatsheet provides concise usage examples for common BCFtools commands, making it an essential reference for bioinformatics workflows. For detailed documentation, visit the [official BCFtools documentation](https://samtools.github.io/bcftools/bcftools.html).