### Ref:https://www.codecademy.com/learn/learn-git/modules/learn-git-git-workflow-u/cheatsheet 
# git Commands
### git version
```bash
# 查看 Git 版本
git --version
```
### git init
```bash
# Initializing a Git Repository
git init
```
### git status
```bash
# Checking the Status of a Git Repository
git status
```
### git add
```bash
git add file_name        # 添加指定文件
git add *.md             # 添加所有 Markdown 文件
git add .                # 添加所有文件
```
### git commit
```bash
# archive(like take photo)
git commit -m "your_message"   # 提交並附加訊息
git commit --amend             # 修改上一個提交
```
### git log
```bash
# Showing git commit logs
git log                     # 顯示詳細提交歷史
git log --oneline           # 每個提交顯示一行
git log --oneline --graph   # 以圖形方式顯示提交歷史
```
### git diff
```bash
git diff file_name                  # 查看文件改動
git diff commit_SHA -- file_name    # 比較指定提交版本與文件
```
### restore
```bash
# 恢復文件至最後一次提交
git restore file_name
```
### reset
```bash
# 撤銷提交
git reset --soft HEAD~1   # 撤銷上一個commit，保留改動
git reset --mixed HEAD~1  # 撤銷commit並保留改動（不進入暫存區）
git reset --hard HEAD~1   # 完全撤銷commit，刪除改動
```
### git config
```bash
git config --global alias.glop "log --pretty=format:'%h %s' --graph"
# 使用別名顯示提交歷史：
git glop
```
### create .gitignore file to ignore track
```bash
*.png   # 忽略所有 .png 文件
```

# github commands
### git clone
```bash
git clone https://github.com/benson1231/git_test.git
```
### git remote
```bash
# 查看遠程repo
git remote -v
# 添加遠程repo
git remote add origin https://github.com/benson1231/git_test.git
```
### git remote
```bash
# 設置分支名稱
git branch -M main
```
### git branch
```bash
git branch                     # list branchs
git branch -d branch_name      # delete branch
```
### git push
```bash
# 推送到遠程repo
git push -u origin main
```
### git merge
```bash
git merge branch-name
```
### git checkout
```bash
# switch branch
git checkout -b new_branch_name
git checkout main
git checkout HEAD filename
```
### git pull
```bash
# 從遠程倉庫拉取最新內容並自動合併到當前分支
git pull origin branch_name
```
### git fetch
```bash
# 從遠程倉庫獲取最新的提交歷史與分支更新，但不更新本地工作區
git fetch
```
























