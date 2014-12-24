# jar_repack step takes a long time and doesn't seem to be necessary, so skip
%define __jar_repack 0

Name:       opendaylight
Version:    0.2.1
Release:    1%{?dist}
Summary:    OpenDaylight SDN Controller

Group:      Applications/Communications
License:    EPL-1.0
URL:        http://www.opendaylight.org
BuildArch:  noarch
Source0:    https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1.1/distribution-karaf-0.2.1-Helium-SR1.1.tar.gz
Buildroot:  /tmp

Requires:   java >= 1:1.7.0
Requires(pre): shadow-utils

%pre
# Short circuits if the group already exists
getent group odl > /dev/null || groupadd odl

%description
OpenDaylight Helium SR1.1 (0.2.1)

%prep
%autosetup -n distribution-karaf-0.2.1-Helium-SR1.1

%install
mkdir -p $RPM_BUILD_ROOT/opt/%name-%version
cp -r ../distribution-karaf-0.2.1-Helium-SR1.1/* $RPM_BUILD_ROOT/opt/%name-%version

%files
# Note that the group, odl, has full perms. Running user must be a member.
%defattr(0775,root,odl,0775)
/opt/%name-%version/

%changelog
* Tue Dec 16 2014 Daniel Farrell <dfarrell@redhat.com> - 0.2.1-1
- Initial Karaf-based RPM
