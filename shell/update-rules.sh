#!/bin/bash

echo "Download rules.yml"
wget https://proxy-gh.1l1.icu/github.com/MuskaNet/OpenGFW-configuration/raw/main/rules.yml -O /opt/opengfw/rules.yml

echo "Restart OpenGFW"
systemctl restart opengfw.service
