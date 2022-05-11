#!/bin/bash
sudo cp mongo mongod mongos /usr/bin/
sudo chown root:root /usr/bin/mongo*
sudo chmod 755 /usr/bin/mongo*

sudo adduser --no-create-home --disabled-login mongodb
sudo cp mongodb.conf /etc/

sudo mkdir -p /var/log/mongodb/
sudo chown -R mongodb:mongodb /var/log/mongodb/
sudo mkdir /data
sudo chmod 777 /data/
sudo mkdir -p /data/db
sudo chown -R mongodb:mongodb /data/db

sudo cp mongodb.service /lib/systemd/system/
