# Docker-VNC-Zoom
Zoom on Docker
This image based on [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc).

## Usage
Build a container
```
mkdir docker_vnc_zoom
curl https://raw.githubusercontent.com/tiger0421/Docker-VNC-Zoom/master/Dockerfile > ./docker_vnc_zoom/Dockerfile
docker build -t docker_vnc_zoom .
```

Launch a container
```
docker run --rm -p 6080:80 -p 5900:5900 docker_vnc_zoom:latest
```
Run the command inside a container.
```
zoom
```

## ENVIRONMENT
- RESOLUTION
- USER
- PASSWORD
etc..

for details, see [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)
