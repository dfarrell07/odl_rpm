#!/usr/bin/env sh

# Update if needed
rpm_path="$HOME/rpmbuild/RPMS/noarch/opendaylight-0.2.1-1.fc20.noarch.rpm"

# Install software required by ODL
echo "Installing Java (required by ODL)"
sudo yum install -y java-1.7.0-openjdk

# Install ODL
echo "Installing ODL"
sudo rpm -i $rpm_path

echo "Need to be member of odl group to run as non-root"
echo "**May need to logout/login for usermod to take effect**"
echo "Executing: sudo usermod -a -G odl $USER"
sudo usermod -a -G odl $USER

echo "You'll need to add /opt/opendaylight-0.2.1/bin to your path"
echo "export PATH=\$PATH:/opt/opendaylight-0.2.1/bin"
echo "^^May want to add this to ~/.bashrc, for effect after logout/login"
