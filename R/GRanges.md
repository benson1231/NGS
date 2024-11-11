# Bioconductor:
https://bioconductor.org/packages/release/bioc/html/GenomicRanges.html  
# 定義 GRanges 對象並加入 metadata column
```r
library(GenomicRanges)
gr <- GRanges(
  seqnames = Rle(c("chr1", "chr1", "chr2")),
  ranges = IRanges(start = c(100, 200, 300), end = c(150, 250, 350)),
  strand = Rle(c("+", "-", "*"))
)
```
# df to GRanges
```r
# 建立一個 data frame
df <- data.frame(
  seqnames = c("chr1", "chr1", "chr2"),
  start = c(100, 200, 300),
  end = c(150, 250, 350),
  score = c(5.3, 2.8, 9.0)
)
# 轉換為 GRanges
gr_from_df <- makeGRangesFromDataFrame(df, keep.extra.columns = TRUE)
print(gr_from_df)
```
# 使用 seqlevels 來保留特定染色體
```r
seqlevels(gr, force = TRUE) <- "chr1"
print(gr)  # 只包含 chr1 的範圍
```
# 重疊查找 (findOverlaps)
```r
# 定義第二個 GRanges
gr2 <- GRanges(
  seqnames = Rle(c("chr1", "chr2")),
  ranges = IRanges(start = c(120, 320), end = c(180, 340)),
  strand = Rle(c("+", "*"))
)
# 查找重疊
overlaps <- findOverlaps(gr, gr2, ignore.strand = TRUE)
```
# 重新創建範例對象
```r
gr <- GRanges(
  seqnames = Rle(c("chr1", "chr2")),
  ranges = IRanges(start = c(100, 200), end = c(150, 250))
)
# 刪除 chr2
gr <- dropSeqlevels(gr, "chr2")
print(gr)  # 只包含 chr1 的範圍

# 只保留 chr1
gr <- keepSeqlevels(gr, "chr1")
print(gr)
```
