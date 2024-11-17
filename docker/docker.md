### docker version
```bash
docker version
```
### 建立 Dockerfile
```
# 基礎映像檔，使用 Node.js 的輕量版本
# 複製應用程式的主程式到容器內
# 定義容器啟動時要執行的指令
FROM node:14-alpine
COPY index.js index.js
CMD node / index.js
```
### docker build
```
# 創建docker images
docker build -t image_name .
```
### docker images
```
# 查看images
docker images
```
### docker ps
```bash
# list running containers
docker ps
# list all containers
docker ps -a
```
### docker run
```
# run container
docker run container_name
# run in the background
docker run -d container_name
```
### docker start/stop
```bash
# start container
docker start container_ID
# stop container
docker stop container_ID
```
# 加上tag(docker-hub-name/repo)
```
docker tag (名稱) (tag)
```
# 上傳
```
docker push (tag) 
```
# 拉資料
```
docker pull (tag)
```
# 移除containers
```bash
# ID - containers id for deletion
docker rm ID
```
# 移除images
```bash
docker rmi images_name
```







