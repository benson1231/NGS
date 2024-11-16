### Updata:2024.11.16
### Ref:https://github.com/arq5x/bedtools2  
# BEDtools Intersect - Overlapping Exons with Alus Regions
```bash
# Run BEDtools intersect between RefSeq exons (RefSeq.gtf) and Alus annotations (Alus.bed)
bedtools intersect -a RefSeq.gtf -b Alus.bed -wo

# Apply the 'split' option for BED12 format to treat each block as a separate interval
bedtools intersect -a RefSeq.bed -b Alus.bed -wo -split

# Use -wao to include all features, even those with no overlaps
bedtools intersect -a RefSeq.bed -b Alus.bed -wao
```
# BAM to BED conversion
```bash
# 將 BAM 檔案轉為 BED 格式，並添加 CIGAR 字串作為第七欄位
bedtools bamtobed -i sample.bam -cigar > sample.bed
# 使用 `-split` 參數，將 spliced alignments 分割成多個 exon 區塊
bedtools bamtobed -i sample.bam -split > sample_split.bed
```
# BED to BAM conversion
```bash
# -g 指定 genome header 檔案（包含染色體長度資訊）
bedtools bedtobam -i sample.bed -g genome_header.txt > sample.bam
# 使用 `-bed12` 參數，保留 BED 檔案中的 exon 區塊並寫入 CIGAR 字串
bedtools bedtobam -i sample.bed -g genome_header.txt -bed12 > sample_exon.bam
```

# 從 genome.fa 檔案中提取 BED 區域的 FASTA 序列
```bash
bedtools getfasta -fi genome.fa -bed regions.bed -fo output.fasta
# 使用 `-split` 提取並合併 exon 區域的序列
bedtools getfasta -fi genome.fa -bed exons.bed -fo exons_output.fasta -split
```
