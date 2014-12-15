### Preparation of system

```
sudo yum install -y @development-tools fedora-packager
usermod -a -G mock <your username>
rpmdev-setuptree
```

### Building source tarball

```
git clone https://github.com/opendaylight/integration.git
cd integration
git checkout -b sr1 release/helium-sr1 # May not be necessary
git archive --prefix=opendaylight-0.2.1/ --output=opendaylight-0.2.1.tar.gz release/helium-sr1
cp opendaylight-0.2.1.tar.gz ~/rpmbuild/SOURCES
cd ~/rpmbuild/SPECS
rpmbuild -ba opendaylight.spec
```
