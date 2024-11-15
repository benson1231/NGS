# Linux for NGS analysis
### echo
```bash
# print words
echo hello
```
### pwd
```bash
# pwd: print directory
pwd
```
### cd
```bash
# change directory
cd ~   # home
cd .   # now dir
cd ..  # father dir
cd /Users/   # use absolute path
```
### ls
```bash
# list directory contents
ls
ls -l  # List files in the long format
ls -t  # Sort by descending time modified
```
### man
```bash
# display online manual documentation pages
man ls
```
### mkdir
```bash
# mkdir: make directories
mkdir new_dir       # 創建一個名為 new_dir 的目錄
mkdir -p dir1/dir2  # 創建嵌套目錄 dir1 和 dir2（如果不存在）
```
### cp
```bash
# cp: copy files and directories
cp file1 file2         # 複製 file1 為 file2
cp file1 dir/          # 複製 file1 到目錄 dir 中
cp -r dir1 dir2        # 遞歸複製目錄 dir1 到 dir2
cp -i file1 file2      # 複製前詢問覆蓋確認
cp -v file1 dir/       # 顯示執行過程中的詳細信息
```
### mv
```bash
# mv: move (rename) files
mv file1 file2         # 將 file1 重命名為 file2
mv file1 dir/          # 移動 file1 到目錄 dir 中
mv dir1 dir2           # 重命名或移動目錄 dir1 為 dir2
mv -i file1 file2      # 移動前詢問覆蓋確認
mv -v file1 dir/       # 顯示執行過程中的詳細信息
```
### rm
```bash
# rm: remove files or directories
rm file1               # 刪除 file1
rm -i file1            # 刪除前詢問確認
rm -r dir/             # 遞歸刪除目錄 dir 及其內容
rm -f file1            # 強制刪除 file1，不提示確認
rm -rf dir/            # 強制遞歸刪除目錄 dir 及其內容
```
### rmdir
```bash
# rmdir: remove empty directories
rmdir empty_dir        # 刪除空目錄 empty_dir
rmdir -p dir1/dir2     # 遞歸刪除空目錄 dir2 和其父目錄 dir1
```
### more
```bash
# more: view file contents one screen at a time
more file.txt       # 逐屏顯示 file.txt 的內容
more +5 file.txt    # 從第 5 行開始顯示 file.txt
```
### less
```bash
# less: view file contents with scrolling support
less file.txt       # 打開 file.txt，可以上下滾動查看內容
less +G file.txt    # 從文件末尾開始顯示
```
### head
```bash
# head: view the first lines of a file
head file.txt             # 顯示 file.txt 的前 10 行
head -n 5 file.txt        # 顯示 file.txt 的前 5 行
```
### tail
```bash
# tail: view the last lines of a file
tail file.txt             # 顯示 file.txt 的最後 10 行
tail -n 5 file.txt        # 顯示 file.txt 的最後 5 行
tail -f file.txt          # 實時查看 file.txt 的新增行
```
### wc
```bash
# wc: word, line, character count
wc file.txt               # 顯示 file.txt 的行數、字數和字節數
wc -l file.txt            # 只顯示行數
wc -w file.txt            # 只顯示字數
wc -c file.txt            # 只顯示字節數
```
### cat
```bash
# cat: concatenate and display files
cat file1.txt             # 顯示 file1.txt 的內容
cat file1.txt file2.txt   # 顯示 file1.txt 和 file2.txt 的內容
cat file1.txt > file3.txt # 將 file1.txt 的內容寫入 file3.txt
```
### stdin, stdout, stderr
```bash
# 標準輸入、輸出和錯誤輸出
command < input.txt       # 從文件 input.txt 獲取輸入
command > output.txt      # 將輸出寫入 output.txt
command 2> error.txt      # 將錯誤輸出寫入 error.txt
command >> output.txt     # 將輸出追加到 output.txt
```
### |
```bash
# pipe: pass the output of one command as input to another command
command1 | command2       # 將 command1 的輸出作為 command2 的輸入
```
### sort
```bash
# sort: sort lines of text files
sort file.txt             # 對 file.txt 的行進行排序
sort -r file.txt          # 逆序排序
sort -n file.txt          # 按數字排序
sort -u file.txt          # 去除重複的行，只保留唯一的行。
```
### uniq
```bash
# uniq: report or omit repeated lines
uniq file.txt             # 刪除重複行（需要先排序）
uniq -c file.txt          # 列出每行重複次數
```
### cut
```bash
# cut: remove sections from each line of files
cut -f 1,3 file.txt       # 顯示 file.txt 的第 1 和第 3 欄（預設分隔符為 TAB）
cut -d ',' -f 2 file.csv  # 使用逗號分隔，顯示第 2 欄
```
### comm
```bash
# comm: compare two sorted files line by line
comm file1.txt file2.txt  # 比較兩個排序過的文件
comm -1 file1.txt file2.txt # 只顯示 file2.txt 特有的行
```
### gzip / gunzip
```bash
# gzip: compress files
gzip file.txt             # 壓縮 file.txt 為 file.txt.gz

# gunzip: decompress files
gunzip file.txt.gz        # 解壓縮 file.txt.gz
```
### bzip2 / bunzip2
```bash
# bzip2: compress files
bzip2 file.txt            # 壓縮 file.txt 為 file.txt.bz2

# bunzip2: decompress files
bunzip2 file.txt.bz2      # 解壓縮 file.txt.bz2
```
### tar
```bash
# 創建壓縮文件
tar -cvf archive.tar file1 file2  # 創建 tar 文件
tar -czvf archive.tar.gz file1 file2  # 創建 gzip 壓縮的 tar 文件

# 解壓 tar 文件
tar -xvf archive.tar  # 解壓 tar 文件
tar -xzvf archive.tar.gz  # 解壓 gzip 壓縮的 tar 文件

# 查看壓縮文件內容
tar -tvf archive.tar

# method2
tar -cvf archive.tar dir/
gzip archive.tar
```
### zcat
```bash
# view gz file
zcat file.gz
```
### 通配符（Wildcard）
```bash
# *: 匹配零個或多個任意字符
ls *.txt  # 列出所有以 .txt 結尾的文件

# ?: 匹配任意單個字符
ls file?.txt  # 匹配 file1.txt、fileA.txt 等

# [ ]: 匹配指定字符集中的任意一個字符
ls file[123].txt  # 匹配 file1.txt、file2.txt、file3.txt

# [! ] 或 [^ ]: 匹配指定字符集以外的字符
ls file[!123].txt  # 匹配 file4.txt 但不匹配 file1.txt
```
### 正則表達式（Regex）符號
```bash
# .: 匹配任意單個字符
grep "f.l" file.txt  # 匹配包含 f_l 的行

# ^: 匹配行首
grep "^start" file.txt  # 匹配以 start 開頭的行

# $: 匹配行尾
grep "end$" file.txt  # 匹配以 end 結尾的行

# *: 匹配零個或多個前面的字符
grep "ab*c" file.txt  # 匹配包含 ac、abc、abbc 的行

# []: 匹配括號內任意字符
grep "[aeiou]" file.txt  # 匹配包含元音字母的行

# \: 用於轉義特殊字符
grep "\." file.txt  # 匹配包含 . 的行

# {}: 使用大括號進行擴展（Brace Expansion）
# 生成一系列文件名或模式
echo file{1,2,3}.txt  # 輸出 file1.txt file2.txt file3.txt
# 生成範圍
echo file{1..5}.txt  # 輸出 file1.txt file2.txt file3.txt file4.txt file5.txt
# 嵌套使用
echo file{A,B}_{1,2}.txt  # 輸出 fileA_1.txt fileA_2.txt fileB_1.txt fileB_2.txt
# 組合目錄和文件
mkdir -p project/{src,doc}/{draft,final}  
# 創建目錄 project/src/draft, project/src/final, project/doc/draft, project/doc/final
```
### grep
```bash
# 在文件中搜索匹配的字符串

# 基本用法
grep "pattern" file.txt  # 在 file.txt 中搜索 "pattern"

# -i: 忽略大小寫
grep -i "pattern" file.txt  

# -n: 顯示行號
grep -n "pattern" file.txt  

# -v: 反向匹配（顯示不匹配的行）
grep -v "pattern" file.txt  

# -r: 遞歸搜索目錄中的所有文件
grep -r "pattern" /path/to/dir  

# -E: 使用擴展正則表達式
grep -E "pattern1|pattern2" file.txt  # 匹配 pattern1 或 pattern2
```
### find
```bash
# 按名稱搜索
find /path/to/dir -name "filename"  # 精確匹配名稱
find /path/to/dir -iname "filename"  # 忽略大小寫

# 按類型搜索
find /path/to/dir -type f  # 查找文件
find /path/to/dir -type d  # 查找目錄

# 按大小搜索
find /path/to/dir -size +1M  # 查找大於1MB的文件
find /path/to/dir -size -1k  # 查找小於1KB的文件

# 按修改時間搜索
find /path/to/dir -mtime -7  # 查找7天內修改的文件
find /path/to/dir -atime +30  # 查找30天前訪問的文件

# 執行命令
find /path/to/dir -name "*.log" -exec rm {} \;  # 刪除所有 .log 文件
```
### chmod
```bash
# 更改文件或目錄的權限

# 基本用法
chmod 755 file.txt  # 設置文件為 rwxr-xr-x
chmod 644 file.txt  # 設置文件為 rw-r--r--

# 使用符號模式
chmod u+x file.txt  # 為文件所有者添加執行權限
chmod g-w file.txt  # 移除文件所在組的寫權限
chmod o+r file.txt  # 為其他用戶添加讀取權限
```
### curl
```bash
# 發送 HTTP 請求和下載文件

# 下載文件
curl -O https://example.com/file.txt  

# 使用 POST 請求
curl -X POST -d "key=value" https://example.com/api  

# 查看 HTTP 標頭
curl -I https://example.com  

# 添加自定義標頭
curl -H "Authorization: Bearer token" https://example.com/api
```
### wget
```bash
# 從網絡下載文件

# 基本下載
wget https://example.com/file.txt  

# 復原下載
wget -c https://example.com/file.txt  

# 下載整個網站
wget -r https://example.com  

# 限速下載
wget --limit-rate=200k https://example.com/file.txt
```
