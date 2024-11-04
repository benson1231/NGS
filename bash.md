# Bash-Scripting setting
https://www.codecademy.com/learn/bash-scripting/modules/bash-scripting/cheatsheet
### To add this permission to a file with filename: script.sh
```bash
chmod +x script.sh
```
### The beginning of your script file should start with #!/bin/bash on its own line.
```bash
#!/bin/bash
```
### To ensure that scripts in ~/bin/ are available, you must add this directory to your PATH within your configuration file
```bash
PATH=~/bin:$PATH
```
### On Linux style shells, this is ~/.bashrc 
### On OSX, this is ~/.bash_profile.
### 在 macOS Catalina 之後，預設的 shell 已經從 bash 改為了 zsh
### 更改path
```bash
nano ~/.zshrc
```
### 加入到末行
```bash
export PATH=~/bin:$PATH
```
### 重新載入
```bash
source ~/.zshrc
```
# 簡單指令
### 輸出文字
```bash
echo "Hello World!"
```
### To access the value of a variable, we use the variable name prepended with a dollar sign ($)
```bash
greeting="Hello"
echo $greeting
```
### Conditionals
```bash
if [ $index -lt 5 ]
then
  echo $index
else
  echo 5
fi
```
#### Equal: -eq
#### Not equal: -ne
#### Less than or equal: -le
#### Less than: -lt
#### Greater than or equal: -ge
#### Greater than: -gt
#### Is null: -z
#### Equal: ==
#### Not equal: !=

### Loops
```bash
for word in $paragraph
do
  echo $word
done
```
```bash
while [ $index -lt 5 ]
do
  echo $index
  index=$((index + 1))
done
```
```bash
until [ $index -eq 5 ]
do
  echo $index
  index=$((index + 1))
done
```
### Inputs
```bash
read number
echo "You guessed $number"
```
### Aliases
```bash
alias saycolors='./saycolors.sh'
alias saycolors='./saycolors.sh "green"'
```
### source 目錄下的所有文件。* 是一個通配符，表示匹配 source 目錄下的所有文件和子目錄。
```bash
for filename in source/*
```
### ex
```bash
#!/bin/bash
echo "Welcome to our world"
## 1.1.1
firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "You are building version" $version

echo 'Do you want to continue? (enter "1" for yes, "0" for no)'
read versioncontinue
if [ $versioncontinue -eq 1 ]
  then
    echo "OK"
  else
    echo "Please come back when you are ready"
fi

for filename in source/*
do
  echo $filename
done

if [ "$filename" == "source/secretinfo.md" ]
then
  echo "Not copying" $filename
else
  echo "Copying" $filename
  cp $filename build/.
fi

cd build/
ls
# We'll add more code here later
cd ..
echo "Build version $version contains:"
ls

```
