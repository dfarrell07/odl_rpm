#!/usr/bin/env sh

# Setup system
sudo yum install -y @development-tools fedora-packager
usermod -a -G mock $USER

# Configure rpmbuild dir
rpmdev-setuptree
wget -P $HOME/rpmbuild/SOURCES https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1/distribution-karaf-0.2.1-Helium-SR1.tar.gz
cp opendaylight.spec $HOME/rpmbuild/SPECS
