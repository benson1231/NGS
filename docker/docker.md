### docker version
```bash
docker version
```
### 建立 Dockerfile
```bash
# 基礎映像檔，使用 Node.js 的輕量版本
# 複製應用程式的主程式到容器內
# 定義容器啟動時要執行的指令
FROM node:14-alpine
COPY index.js index.js
CMD node / index.js
```
### docker build
```bash
# 創建docker images
docker build -t image_name .
```
### docker images
```bash
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
```bash
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
```bash
# add tag(docker_hub_name/repo)
docker tag local_image:tagname docker_hub_name/repo:tagname
```
### docker push
```bash
# push to docker-hub repo
docker push docker_hub_name/repo:tagname
```
### docker pull
```bash
# pull image to local
docker pull docker_hub_name/repo:tagname
```
### docker system prune
```bash
# 清理無用的 Docker 資源
docker system prune
# 如果還需清理未標記的映像檔
docker system prune -a
```
### docker log
```bash
# 查看容器日誌
docker logs container_ID
# 持續查看容器日誌
docker logs -f container_ID
```
### docker exec
```bash
# 使用 Bash 進入容器
docker exec -it container_ID bash
```
### docker-compose
```bash
# 啟動容器群組
docker-compose up
# 停止容器群組
docker-compose down
```







