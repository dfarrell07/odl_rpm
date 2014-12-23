#!/usr/bin/env sh

sudo rpm -e opendaylight-0.2.1-1.fc20
sudo rm -rf /opt/opendaylight-0.2.1
sudo groupdel odl

echo "Need to logout/login for removal of odl group to take effect"
