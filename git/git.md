### Ref:https://www.codecademy.com/learn/learn-git/modules/learn-git-git-workflow-u/cheatsheet 
### git version
```bash
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
git add file_name
# all md file
git add *.md
# all file in wd
git add .
```
### git commit
```bash
# archive(like take photo)
git commit -m "your_message"
```
### git log
```bash
# Showing git commit logs
git log
# Showing git commit logs for one line
git log --oneline
```
### git diff
```bash
git diff file_name
git diff file_id -- file_name
```
### restore
```bash
git restore file_name
```
### reset
```bash
# save way to reset
git check file_id -- file_name

git reset --soft HEAD~1   # 撤銷上一個 commit，保留改動
git reset --mixed HEAD~1  # 撤銷上一個 commit，保留改動但不進入 staging area
git reset --hard HEAD~1   # 完全撤銷上一個 commit，包括文件改動
```
### create .gitignore file to ignore track
```bash
# ignore .png file
*.png
```

# github
### git connection repo
```bash
# http address
git remote add origin https://github.com/benson1231/git_test.git
```
```bash
git branch -M main
```
```bash
git push -u origin main
```
### inspect branch
```bash
git branch
```
### switch new branch
```bash
# checkout - switch branch
git checkout -b new_branch_name
git checkout main
```
### push to github
```bash
git push origin branch_name
```
### clone from github
```bash
git clone https://github.com/benson1231/git_test.git
```
### pull from github repo
```bash
git pull origin branch_name
```

























