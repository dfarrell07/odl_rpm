#!/usr/bin/env sh

# Setup system
sudo yum install -y @development-tools fedora-packager wget java-1.7.0-openjdk
sudo usermod -a -G mock $USER

# Configure rpmbuild dir
rpmdev-setuptree
curl -o $HOME/rpmbuild/SOURCES/distribution-karaf-0.2.1-Helium-SR1.tar.gz https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1/distribution-karaf-0.2.1-Helium-SR1.tar.gz
cp opendaylight.spec $HOME/rpmbuild/SPECS

# Build
cd $HOME/rpmbuild/SPECS
rpmbuild -bb opendaylight.spec

if [ -f  ~/rpmbuild/RPMS/noarch/opendaylight-0.2.1-1.fc20.noarch.rpm ]; then
    echo "RPM built!"
    echo "Should be at: ~/rpmbuild/RPMS/noarch/opendaylight-0.2.1-1.fc20.noarch.rpm"
else
    echo "RPM seems to have failed. :(" &>2
fi
