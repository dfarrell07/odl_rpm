#!/usr/bin/env sh

# Common paths used in this script
# NB: Name will need to be updated for both ODL and RMP version bumps
rpm_name="opendaylight-0.2.1-3.fc20.noarch.rpm"
rpm_out_path="$HOME/rpmbuild/RPMS/noarch/$rpm_name"
src_name="distribution-karaf-0.2.1-Helium-SR1.1.tar.gz"
src_cache_path="$HOME/$src_name"

# Install required software, add user to mock group for rpmbuild
sudo yum install -y @development-tools fedora-packager java-1.7.0-openjdk
sudo usermod -a -G mock $USER

# Configure rpmbuild dir
rpmdev-setuptree

# Put ODL source archive location required by rpmbuild
if [ -f  $src_cache_path ]; then
    echo "Using cached version of ODL at $src_cache_path"
    cp $src_cache_path $HOME/rpmbuild/SOURCES/$src_name
else
    echo "No cached ODL found, downloading from Nexus..."
    curl -o $HOME/rpmbuild/SOURCES/$src_name https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1.1/$src_name
fi

# Put systemd unit file somewhere we can access it from .spec
cp opendaylight.service $HOME/rpmbuild/SOURCES

# Put ODL RPM .spec file in location required by rpmbuild
cp opendaylight.spec $HOME/rpmbuild/SPECS

# Build ODL RPM
cd $HOME/rpmbuild/SPECS
rpmbuild -bb opendaylight.spec

# Confirm RPM found in expected location
if [ -f  $rpm_out_path ]; then
    echo "RPM built!"
    echo "Should be at: $rpm_out_path"
else
    echo "RPM seems to have failed. :(" &>2
fi
