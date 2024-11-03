# 安裝及更新conda
### version
```bash
conda --version
```
```bash
conda -V
```
### information
```bash
conda info
```
# 建立虛擬環境
### list environment
```bash
conda env list
```
### create environment
```bash
# myenv - your environmen name
conda create --name myenv python=3.5
```
# 啟動虛擬環境
### activate environment
```bash
# myenv - your environmen name
conda activate myenv
```
### list environment details(packages)
```bash
conda list
```
### download package
```bash
# pumpy - package you want to download
conda install numpy pandas
```
# 離開虛擬環境
### leave environment
```bash
conda deactivate
```
# 刪除虛擬環境或package
### remove packages
```bash
# myenv & numpy - packages you want to remove
conda remove --name myenv numpy
```
### remove whole environment
```bash
conda env remove --name myenv
```












