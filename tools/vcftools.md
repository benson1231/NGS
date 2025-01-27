# VCFtools Cheatsheet

**Author**: Chin-Yu Lee 
**Update**: 2025.1.27   
**Reference**: [VCFtools GitHub](https://github.com/vcftools/vcftools)

---

## Table of Contents
1. [Filtering Variants](#filtering-variants)
2. [Summarizing Statistics](#summarizing-statistics)
3. [Sample Subsetting](#sample-subsetting)
4. [File Conversion](#file-conversion)

---

### 1. Filtering Variants
The `vcftools` suite allows filtering of variants based on various criteria.

#### Examples:
```bash
# Filter variants based on quality threshold
vcftools --vcf input.vcf --recode --recode-INFO-all --out filtered_variants --minQ 30

# Extract only specific chromosomes
vcftools --vcf input.vcf --chr chr1 --chr chr2 --recode --out extracted_chromosomes

# Remove indels from the VCF file
vcftools --vcf input.vcf --remove-indels --recode --out snps_only
```

---

### 2. Summarizing Statistics
Generate various summary statistics for VCF files.

#### Examples:
```bash
# Calculate allele frequency
vcftools --vcf input.vcf --freq --out allele_frequency

# Calculate site quality statistics
vcftools --vcf input.vcf --site-quality --out site_quality

# Generate depth statistics
vcftools --vcf input.vcf --depth --out depth_statistics
```

---

### 3. Sample Subsetting
Subset samples from a VCF file based on a predefined list.

#### Examples:
```bash
# Subset samples using a list of sample IDs
vcftools --vcf input.vcf --keep samples.txt --recode --out subset_samples

# Exclude specific samples
vcftools --vcf input.vcf --exclude samples_to_remove.txt --recode --out filtered_samples
```

---

### 4. File Conversion
Convert VCF files into other formats for further analysis.

#### Examples:
```bash
# Convert a VCF file to PLINK format
vcftools --vcf input.vcf --plink --out converted_file

# Export genotype data to a tab-delimited format
vcftools --vcf input.vcf --extract-FORMAT-info GT --out genotype_data
```

---

This cheatsheet provides concise usage examples for common VCFtools commands, making it an essential reference for bioinformatics workflows. For detailed documentation, visit the [VCFtools Documentation](https://vcftools.github.io/).

