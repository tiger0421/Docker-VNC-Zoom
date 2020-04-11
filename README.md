# Docker-VNC-Zoom
Zoom on Docker
This image based on [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc).

## Usage
Launch a container
```
docker run --rm -p 6080:80 -p 5900:5900 tiger0421/docker_vnc_zoom
```
Execute command at Terminal in container.
```
zoom
```

## ENVIRONMENT
- RESOLUTION
- USER
- PASSWORD
etc..

for details, see [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)
