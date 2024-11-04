# git
### git version
```bash
git --version
```
### anthor details
```bash
git config --global user.name "your name"
git config --global user.email "your email"
```
### initiation-change dir to git repo
```bash
git init
```
### check file status
```bash
git status
```
### track the file
```bash
# your file
git add your_file_name
# all md file
git add *.md
# all file in wd
git add .
```
### archive(take photo)
```bash
# m - message
git commit -m "your_message"
```
### modyfication history
```bash
# q for leave 
git log
git log --oneline
```
### different
```bash
# file_id - from git log
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
# Warning : irreversible reset
git reset --hard file_id
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

























