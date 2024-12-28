# 使用 FastQC 對每個樣本進行質量檢查
mkdir fastqc_results
fastqc SRR1518108_1.fastq.gz SRR1518108_2.fastq.gz -o fastqc_results/

# 整合質量控制結果
multiqc fastqc_results/ -o fastqc_results/

# 建立參考基因組索引（僅需一次）
bwa index reference/GRCh38.fa

# 比對讀數
bwa mem -t 4 reference/GRCh38.fa SRR1518108_1.fastq.gz SRR1518108_2.fastq.gz > sample.sam

# 轉換 SAM 到 BAM 並排序
samtools view -b -t reference/GRCh38.fa.fai -o sample.bam sample.sam
samtools sort -o sample_sorted.bam sample.bam
samtools index sample_sorted.bam

# 使用 Picard 去重 (去除PCR重複，以減少偽陽性變異)
picard MarkDuplicates I=sample_sorted.bam O=sample_dedup.bam M=sample_metrics.txt REMOVE_DUPLICATES=true

# 生成BAM索引以便於後續變異檢測
samtools index sample_dedup.bam

# 產生重校正表
wget https://console.cloud.google.com/storage/browser/_details/genomics-public-data/resources/broad/hg38/v0/Homo_sapiens_assembly38.known_indels.vcf.gz
wget https://console.cloud.google.com/storage/browser/_details/genomics-public-data/resources/broad/hg38/v0/Homo_sapiens_assembly38.known_indels.vcf.gz.tbi
gatk BaseRecalibrator \
   -I sample_dedup.bam \
   -R reference/GRCh38.fa \
   --known-sites 1000G_phase1.snps.high_confidence.hg38.vcf.gz \
   -O recal_data.table

# 使用校正表校正BAM文件
gatk ApplyBQSR -R reference/GRCh38.fa -I sample_dedup.bam --bqsr-recal-file recal_data.table -O sample_recal.bam

# 執行變異檢測來識別SNP和InDel
gatk HaplotypeCaller -R reference/GRCh38.fa -I sample_recal.bam -O sample_variants.vcf

# 使用 SnpEff 進行變異註釋 (對檢測到的變異進行註釋，了解其基因功能影響)
snpEff hg38 sample_variants.vcf > sample_annotated.vcf

# 過濾頻率小於 0.01 的變異（假設你有變異頻率資料）
vcftools --vcf sample_annotated.vcf --maf 0.01 --recode --out sample_filtered

# 結果整合
multiqc . -o analysis_summary/
