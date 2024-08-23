#/bin/bash

echo "Install tools"
apt update
apt install wget

echo "Make directory"
mkdir -p /opt
mkdir -p /opt/opengfw

echo "Download OpenGFW v0.4.0 amd64"
wget https://proxy-gh.1l1.icu/github.com/apernet/OpenGFW/releases/download/v0.4.0/OpenGFW-linux-amd64 -O /opt/opengfw/OpenGFW
chmod +x /opt/opengfw/OpenGFW

echo "Download config.yml and rules.yml"
wget https://proxy-gh.1l1.icu/github.com/MuskaNet/OpenGFW-configuration/raw/main/config.yml -O /opt/opengfw/config.yml
wget https://proxy-gh.1l1.icu/github.com/MuskaNet/OpenGFW-configuration/raw/main/rules.yml -O /opt/opengfw/rules.yml

echo "Download opengfw.service"
wget https://proxy-gh.1l1.icu/github.com/MuskaNet/OpenGFW-configuration/raw/main/daemon/opengfw.service -O /usr/lib/systemd/system/opengfw.service

echo "Enable and start OpenGFW"
systemctl enable --now opengfw.service
