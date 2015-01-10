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

# Required for ODL at run time
Requires:   java >= 1:1.7.0
# Required for creating odl group
Requires(pre): shadow-utils
# Required for configuring systemd
BuildRequires: systemd

%pre
# Short circuits if the group already exists
getent group odl > /dev/null || groupadd odl

%description
OpenDaylight Helium SR1.1 (0.2.1)

%prep
# Extract ODL archive into dir with given name (-n)
%autosetup -n distribution-karaf-0.2.1-Helium-SR1.1

%install
# Create directory in build root for ODL
mkdir -p $RPM_BUILD_ROOT/opt/%name-%version
# Move ODL from archive to its dir in build root
cp -r ../distribution-karaf-0.2.1-Helium-SR1.1/* $RPM_BUILD_ROOT/opt/%name-%version
# Create directory in build root for systemd .service file
mkdir -p $RPM_BUILD_ROOT/%{_unitdir}
# Move ODL's systemd .service file to correct dir in build root
cp ../../SOURCES/opendaylight.service $RPM_BUILD_ROOT/%{_unitdir}

%files
# Users who work with OpenDaylight should be in the odl group
%attr(0775,root,odl) /opt/%name-%version/
# Configure systemd
%attr(0644,-,-) %{_unitdir}/%name.service


%changelog
* Tue Dec 16 2014 Daniel Farrell <dfarrell@redhat.com> - 0.2.1-1
- Initial Karaf-based RPM
* Fri Jan 9 2015 Daniel Farrell <dfarrell@redhat.com> - 0.2.1-2
- Added systemd configuration
