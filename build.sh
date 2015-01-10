#!/usr/bin/env sh

# Update if needed
rpm_path="$HOME/rpmbuild/RPMS/noarch/opendaylight-0.2.1-1.fc20.noarch.rpm"

# Setup system
sudo yum install -y @development-tools fedora-packager java-1.7.0-openjdk
sudo usermod -a -G mock $USER

# Configure rpmbuild dir
rpmdev-setuptree
curl -o $HOME/rpmbuild/SOURCES/distribution-karaf-0.2.1-Helium-SR1.1.tar.gz https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1.1/distribution-karaf-0.2.1-Helium-SR1.1.tar.gz
cp opendaylight.service $HOME/rpmbuild/SOURCES
cp opendaylight.spec $HOME/rpmbuild/SPECS

# Build
cd $HOME/rpmbuild/SPECS
rpmbuild -bb opendaylight.spec

if [ -f  $rpm_path ]; then
    echo "RPM built!"
    echo "Should be at: $rpm_path"
else
    echo "RPM seems to have failed. :(" &>2
fi
