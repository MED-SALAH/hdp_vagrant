#!/bin/bash

# install p1jenkins

IP=$(hostname -I | awk '{print $2}')

echo "START - install jenkins - "$IP
sudo bash
echo "[1]: install utils & ansible"
sudo yum update -y >/dev/null
sudo yum  install -y git sshpass wget ansible gnupg2 curl >/dev/null


echo "[2]: install java"
sudo yum install -y java-1.8.0-openjdk.x86_64
sudo systemctl enable firewalld
sudo systemctl start firewalld


echo "END - install jenkins"
