FROM dorowu/ubuntu-desktop-lxde-vnc:xenial

# Install apt package.
RUN apt update \
 && apt install -y gdebi curl libxcb-randr0 libxcb-image0 libpulse0 \
 libxcb-keysyms1 libxcb-xtest0 ibus \
 && apt clean && rm -rf /var/lib/apt/lists/*

# Dwonload & install zoom
ENV ZOOM_URL=https://zoom.us/client/latest/zoom_amd64.deb
RUN echo "curl -sSL $ZOOM_URL -o /tmp/zoom_setup.deb \
 && apt install /tmp/zoom_setup.deb \
 && apt -f install \
 && rm /tmp/zoom_setup.deb && rm -rf /var/lib/apt/lists/*" > zoom_install.sh \
 && chmod 777 zoom_install.sh
