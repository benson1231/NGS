# 使用flagstat命令查看對齊數量
```bash
samtools flagstat example.bam
```
# 排序文件 example.bam，以便進行索引或快速查找基因組範圍內的信息
```bash
samtools sort -o example.sorted.bam example.bam
```
# 將排序後的文件進行索引
```bash
samtools index example.sorted.bam
```
# 使用merge命令合併多個對齊文件
```bash
samtools merge output.bam NA12814_1.bam NA12814_2.bam
```
# SAM TO BAM conversion
```bash
samtools view -bT ref.fa in.sam.gz
```
# BAM TO SAM conversion
```bash
samtools view -h in.bam
```
# View all alignments
```bash
# View all alignments in SAM format (no header)
samtools view example.bam

# View all alignments with header included
samtools view -h example.bam

# View only the header of the BAM file
samtools view -H example.bam
```
# Extract alignments in a specific region (e.g., chromosome 1 from 1M to 2M)
```bash
samtools view example.bam 1:1000000-2000000 | head
# Extract alignments within regions specified in a BED file
samtools view -L example.bed example.bam
```
# Ensure BAM file is indexed (required for region-based extractions)
```bash
samtools index example.bam
```
