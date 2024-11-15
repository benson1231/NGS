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

```bash

```
```bash

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
### tar
```bash
# 壓縮和解壓文件

# 創建壓縮文件
tar -cvf archive.tar file1 file2  # 創建 tar 文件
tar -czvf archive.tar.gz file1 file2  # 創建 gzip 壓縮的 tar 文件

# 解壓 tar 文件
tar -xvf archive.tar  # 解壓 tar 文件
tar -xzvf archive.tar.gz  # 解壓 gzip 壓縮的 tar 文件

# 查看壓縮文件內容
tar -tvf archive.tar
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
