### https://github.com/samtools/samtools
### samtools flagstat
```bash
# 使用flagstat命令查看對齊數量
samtools flagstat ex1.bam
```
### samtools sort
```bash
# 排序文件 example.bam，以便進行索引或快速查找基因組範圍內的信息
samtools sort -o ex1.sorted.bam ex1.bam
```
### samtools index
```bash
# 將排序後的文件進行索引
samtools index ex1.sorted.bam
```
### samtools merge
```bash
# 使用merge命令合併多個對齊文件
samtools merge -o output.bam NA12814_1.bam NA12814_2.bam
```
### samtools view
```bash
# SAM TO BAM conversion
samtools view -b -t ex1.fa.fai -o output.bam ex1.sam.gz
# BAM TO SAM conversion
samtools view -h -o output.sam ex1.bam

# View all alignments in SAM format (no header)
samtools view ex1.bam
# View all alignments with header included
samtools view -h ex1.bam
# View only the header of the BAM file
samtools view -H ex1.bam

# Extract alignments in a specific region (chromosome 1 from 1M to 2M)
samtools view ex1.bam 1:1000000-2000000 | head
# Extract alignments within regions specified in a BED file
samtools view -L ex1.bed ex1.bam
```

