# 使用 bcftools view 轉換 BCF/VCF 格式
```bash
# 查看壓縮的 BCF 檔案內容並轉換為壓縮的 VCF 格式
bcftools view -Oz -o output.vcf.gz input.bcf
# 使用 `-O` 參數指定輸出格式:
# - `b`: 壓縮 BCF
# - `u`: 未壓縮 BCF
# - `z`: 壓縮 VCF
# - `v`: 未壓縮 VCF

# 使用 `-r` 指定區域篩選，僅保留 chr1 染色體的第 1000000 到 2000000 範圍
bcftools view -r chr1:1000000-2000000 -Oz -o region_filtered.vcf.gz input.bcf
# 使用 `-R` 從檔案中指定多個區域，檔案格式為 BED 標準格式
bcftools view -R regions.bed -Oz -o file_filtered.vcf.gz input.bcf
```
# 使用 bcftools call 進行變異檢測
```bash
# 進行變異檢測並使用 `-m` 算法進行多等位變異檢測
bcftools mpileup -Ou -f reference.fa input.bam | bcftools call -mv -Oz -o output_variants.vcf.gz
# 使用 `zcat` 查看壓縮 VCF 的內容，無需解壓
zcat output_variants.vcf.gz | head -n 20
# 使用 `grep` 過濾出所有變異行，不包括標頭
zcat output_variants.vcf.gz | grep -v "^#"
```
