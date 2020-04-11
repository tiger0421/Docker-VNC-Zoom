# Docker-VNC-Zoom
Zoom on Docker
This image based on [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc).

## Caution
This container has NOT install zoom yet.

## Usage
Pull a container
```
docker pull tiger0421/docker_vnc_zoom
```

Launch a container
```
docker run --rm -p 6080:80 -p 5900:5900 docker_vnc_zoom:latest
```
Run the command inside a container to install Zoom(in the first time only).
```
sh zoom_install.sh
```

Run zoom command inside a container
```
zoom
```

## Build
Instead of running zoom_install.sh, you can build a Zoom pre-installed container.
```
mkdir docker_vnc_zoom
curl https://raw.githubusercontent.com/tiger0421/Docker-VNC-Zoom/master/Dockerfile_full > ./docker_vnc_zoom/Dockerfile
docker build -t docker_vnc_zoom -f ./docker_vnc_zoom/Dockerfile .
```

Run zoom command inside a container
```
zoom
```

## ENVIRONMENT
- RESOLUTION
- USER
- PASSWORD
etc..

for details, see [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)
