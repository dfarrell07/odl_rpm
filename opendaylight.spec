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
install -m755 -d ../distribution-karaf-0.2.1-Helium-SR1 $RPM_BUILD_ROOT/opt/%name-%version


%files



%changelog
