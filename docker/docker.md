# version
```bash
docker version
```
# 建立 Dockerfile
```
FROM node:14-alpine
COPY index.js index.js
CMD node / index.js
```
# 創建docker
```
docker build -t (名稱) .
```
# 查看images
```
docker images
```
# 列出container
```bash
# running containers
docker ps
# all containers
docker ps -a
```
# 運行container
```
docker run (名稱)
# run in the background
docker run -d (名稱)
```
# start/stop container
```bash
# start
docker start container_ID
# stop
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







