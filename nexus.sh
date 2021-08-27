#!/bin/bash
sudo mkdir /app && cd /app

wget www.sonatype.org/downloads/nexus-2.11.2-03-bundle.tar.gz
sudo tar -xvf nexus-2.11.2-03-bundle.tar.gz
sudo mv nexus-2.11.2-03 nexus
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype-work
sudo ln -s /app/nexus/bin/nexus /etc/init.d/nexus
su nexus
cd nexus
sudo service nexus start

