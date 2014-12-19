# The jar_repack step takes a *really* long time and doesn't seem to be necessary, so skip
%define __jar_repack 0

Name:		opendaylight
Version:	0.2.1
Release:	1%{?dist}
Summary:	OpenDaylight SDN Controller

Group:		Applications/Communications
License:	EPL-1.0
URL:		http://www.opendaylight.org
BuildArch:  noarch
Source0:	https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1/distribution-karaf-0.2.1-Helium-SR1.tar.gz
Buildroot:  /tmp

Requires:   java >= 1:1.7.0

%description
OpenDaylight Helium SR1 (0.2.1)

%prep
%autosetup -n distribution-karaf-0.2.1-Helium-SR1


%install
mkdir -p $RPM_BUILD_ROOT/opt/%name-%version
cp -r ../distribution-karaf-0.2.1-Helium-SR1/* $RPM_BUILD_ROOT/opt/%name-%version

# karaf.log needs to be writable by non-root, but doesn't normally exist until ODL's run
# Need to create it so we can set its permissions below
#mkdir -p $RPM_BUILD_ROOT/opt/%name-%version/data/log
#touch $RPM_BUILD_ROOT/opt/%name-%version/data/log/karaf.log


%files
# TODO: Figure out how to do this more elegantly (without 0777)
%defattr(0777,root,root,0777)
#%attr(0777, root, root) /opt/%name-%version/data/log/karaf.log
/opt/%name-%version/


%changelog
