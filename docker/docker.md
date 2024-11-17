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
# run image in container
docker run image_name
# run image in container at background
docker run -d image_name
```
### docker start/stop
```bash
# start container
docker start container_ID
# stop container
docker stop container_ID
```
### docker rm
```bash
# remove container
docker rm container_ID
```
### docker rmi
```bash
# remove image
docker rmi image_name
```
### docker tag
```
# add tag(docker_hub_name/repo)
docker tag local_image:tagname docker_hub_name/repo:tagname
```
### docker push
```
# push to docker-hub repo
docker push docker_hub_name/repo:tagname
```
### docker pull
```
# pull image to local
docker pull docker_hub_name/repo:tagname
```








