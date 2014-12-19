#!/usr/bin/env sh

# Update if needed
rpm_path="$HOME/rpmbuild/RPMS/noarch/opendaylight-0.2.1-1.fc20.noarch.rpm"

# Install software required by ODL
sudo yum install -y java-1.7.0-openjdk

sudo rpm -i $rpm_path
echo "You'll need to add /opt/opendaylight-0.2.1/bin to your path:"
echo "export PATH=\$PATH:/opt/opendaylight-0.2.1/bin"
