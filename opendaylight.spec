Name:		opendaylight
Version:	0.2.1
Release:	1%{?dist}
Summary:	OpenDaylight SDN Controller

Group:		Applications/Communications
License:	EPL-1.0
URL:		http://www.opendaylight.org
BuildArch:  noarch
Source0:	https://github.com/opendaylight/integration/archive/release/helium-sr1.tar.gz

BuildRequires:	java-devel
BuildRequires:	maven
Requires:       java >= 1:1.7.0

%description
OpenDaylight Helium SR1 (0.2.1)

%prep
# TODO: Should be able to use %autosetup -n <name> to get proper name, vs work described in README
%setup -q


%build
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m" && mvn clean install -Dmaven.test.skip=true


%install
# TODO


%files
# TODO
#%doc



%changelog
# TODO
