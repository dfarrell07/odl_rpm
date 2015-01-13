Scratch space for scripts related to building an OpenDaylight RPM.

## Building RPM

```
[fedora@dfarrell-rpm ~]$ ./build.sh 
Package fedora-packager-0.5.10.3-1.fc20.noarch already installed and latest version
Nothing to do
Using cached version of ODL at /home/fedora/distribution-karaf-0.2.1-Helium-SR1.1.tar.gz
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   173    0   173    0     0    414      0 --:--:-- --:--:-- --:--:--   414
  0     0    0   486    0     0    683      0 --:--:-- --:--:-- --:--:--   683
Executing(%prep): /bin/sh -e /var/tmp/rpm-tmp.RKh8CE
+ umask 022
+ cd /home/fedora/rpmbuild/BUILD
+ cd /home/fedora/rpmbuild/BUILD
+ rm -rf distribution-karaf-0.2.1-Helium-SR1.1
+ /usr/bin/tar -xf -
+ /usr/bin/gzip -dc /home/fedora/rpmbuild/SOURCES/distribution-karaf-0.2.1-Helium-SR1.1.tar.gz
+ STATUS=0
+ '[' 0 -ne 0 ']'
+ cd distribution-karaf-0.2.1-Helium-SR1.1
+ /usr/bin/chmod -Rf a+rX,u+w,g-w,o-w .
+ cd /home/fedora/rpmbuild/BUILD
+ /usr/bin/gzip -dc /home/fedora/rpmbuild/SOURCES/opendaylight-systemd-520321a.tar.gz
+ /usr/bin/tar -xvvf -
drwxrwxr-x root/root         0 2015-01-13 19:20 opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85/
-rw-rw-r-- root/root        24 2015-01-13 19:20 opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85/.gitignore
-rw-rw-r-- root/root       282 2015-01-13 19:20 opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85/opendaylight.service
+ STATUS=0
+ '[' 0 -ne 0 ']'
+ cd opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85
+ /usr/bin/chmod -Rf a+rX,u+w,g-w,o-w .
+ exit 0
Executing(%install): /bin/sh -e /var/tmp/rpm-tmp.oJAv1Y
+ umask 022
+ cd /home/fedora/rpmbuild/BUILD
+ '[' /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64 '!=' / ']'
+ rm -rf /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64
++ dirname /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64
+ mkdir -p /home/fedora/rpmbuild/BUILDROOT
+ mkdir /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64
+ cd opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85
+ mkdir -p /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64/opt/opendaylight-0.2.1
+ cp -r ../distribution-karaf-0.2.1-Helium-SR1.1/bin ../distribution-karaf-0.2.1-Helium-SR1.1/configuration ../distribution-karaf-0.2.1-Helium-SR1.1/data ../distribution-karaf-0.2.1-Helium-SR1.1/deploy ../distribution-karaf-0.2.1-Helium-SR1.1/etc ../distribution-karaf-0.2.1-Helium-SR1.1/externalapps ../distribution-karaf-0.2.1-Helium-SR1.1/lib ../distribution-karaf-0.2.1-Helium-SR1.1/system ../distribution-karaf-0.2.1-Helium-SR1.1/version.properties /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64/opt/opendaylight-0.2.1
+ mkdir -p /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64//usr/lib/systemd/system
+ cp ../../BUILD/opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85/opendaylight.service /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64//usr/lib/systemd/system
+ '[' noarch = noarch ']'
+ case "${QA_CHECK_RPATHS:-}" in
+ /usr/lib/rpm/check-buildroot
+ /usr/lib/rpm/redhat/brp-compress
+ /usr/lib/rpm/redhat/brp-strip /usr/bin/strip
+ /usr/lib/rpm/redhat/brp-strip-comment-note /usr/bin/strip /usr/bin/objdump
+ /usr/lib/rpm/redhat/brp-strip-static-archive /usr/bin/strip
+ /usr/lib/rpm/brp-python-bytecompile /usr/bin/python 1
+ /usr/lib/rpm/redhat/brp-python-hardlink
Processing files: opendaylight-0.2.1-5.fc20.noarch
Provides: opendaylight = 0.2.1-5.fc20 osgi(bcpkix) = 1.50 osgi(bcprov) = 1.50 osgi(biz.aQute.bndlib) = 1.43.0 osgi(biz.aQute.bndlib) = 2.2.0 osgi(ch.qos.logback.classic) = 1.0.9 osgi(ch.qos.logback.core) = 1.0.9 osgi(chameleon-mbeans) = 1.0.0 osgi(com.codahale.metrics.core) = 3.0.1 osgi(com.codahale.metrics.graphite) = 3.0.1 osgi(com.fasterxml.jackson.core.jackson-annotations) = 2.3.2 osgi(com.fasterxml.jackson.core.jackson-core) = 2.3.2 osgi(com.fasterxml.jackson.core.jackson-databind) = 2.3.2 osgi(com.fasterxml.jackson.datatype.jackson-datatype-json-org) = 2.3.2 osgi(com.fasterxml.jackson.jaxrs.jackson-jaxrs-base) = 2.3.2 osgi(com.fasterxml.jackson.jaxrs.jackson-jaxrs-json-provider) = 2.3.2 osgi(com.fasterxml.jackson.module.jackson-module-jaxb-annotations) = 2.3.2 osgi(com.google.gson) = 2.2.4 osgi(com.google.guava) = 14.0.1 osgi(com.google.protobuf) = 2.5.0 osgi(com.springsource.org.aopalliance) = 1.0.0 osgi(com.springsource.tcl.lang) = 1.4.1 osgi(com.springsource.tcl.lang.jacl) = 1.4.1 osgi(com.sun.jersey.client) = 1.17.0 osgi(com.sun.jersey.core) = 1.17.0 osgi(com.sun.jersey.jersey-server) = 1.17.0 osgi(com.sun.jersey.json) = 1.17.0 osgi(com.sun.jersey.servlet) = 1.17.0 osgi(com.typesafe.akka.actor) = 2.3.4 osgi(com.typesafe.akka.cluster) = 2.3.4 osgi(com.typesafe.akka.osgi) = 2.3.4 osgi(com.typesafe.akka.persistence.experimental) = 2.3.4 osgi(com.typesafe.akka.remote) = 2.3.4 osgi(com.typesafe.akka.slf4j) = 2.3.4 osgi(com.typesafe.akka.testkit) = 2.3.4 osgi(com.typesafe.config) = 1.2.0 osgi(config-persister-feature-adapter) = 0.2.6 osgi(controllermanager.northbound) = 0.0.3 osgi(groovy-all) = 2.0.1 osgi(io.netty.buffer) = 4.0.23 osgi(io.netty.codec) = 4.0.23 osgi(io.netty.codec-http) = 4.0.23 osgi(io.netty.common) = 4.0.23 osgi(io.netty.handler) = 4.0.23 osgi(io.netty.transport) = 4.0.23 osgi(jackson-core-asl) = 1.9.2 osgi(jackson-jaxrs) = 1.9.2 osgi(jackson-mapper-asl) = 1.9.2 osgi(jackson-xc) = 1.9.2 osgi(javassist) = 3.17.1 osgi(javax.activation) = 1.1.0 osgi(javax.annotation) = 1.1.0 osgi(javax.annotation-api) = 1.2 osgi(javax.ejb) = 3.1.1 osgi(javax.el) = 2.2.0 osgi(javax.mail) = 1.4.4 osgi(javax.mail.glassfish) = 1.4.1 osgi(javax.persistence) = 2.0.4 osgi(javax.resource) = 1.5.0 osgi(javax.servlet) = 3.0.0 osgi(javax.servlet.jsp) = 2.2.0 osgi(javax.servlet.jsp.jstl) = 1.2.0 osgi(javax.servlet.jsp.jstl.impl) = 1.2.0 osgi(javax.ws.rs-api) = 2.0 osgi(javax.ws.rs.jsr311-api) = 1.1.1 osgi(javax.xml.rpc) = 1.1.0 osgi(jcl.over.slf4j) = 1.7.2 osgi(jline) = 2.11.0 osgi(karaf.branding) = 1.0.1 osgi(log4j) = 1.2.17 osgi(log4j.over.slf4j) = 1.7.2 osgi(net.sf.ehcache) = 2.8.3 osgi(org.antlr.antlr4) = 4.0.0 osgi(org.apache.aries.blueprint.api) = 1.0.0 osgi(org.apache.aries.blueprint.cm) = 1.0.3 osgi(org.apache.aries.blueprint.core) = 1.4.0 osgi(org.apache.aries.blueprint.core.compatibility) = 1.0.0 osgi(org.apache.aries.jmx.api) = 1.1.0 osgi(org.apache.aries.jmx.blueprint.api) = 1.1.0 osgi(org.apache.aries.jmx.blueprint.core) = 1.1.0 osgi(org.apache.aries.jmx.core) = 1.1.1 osgi(org.apache.aries.jmx.whiteboard) = 1.0.0 osgi(org.apache.aries.proxy.api) = 1.0.0 osgi(org.apache.aries.proxy.impl) = 1.0.2 osgi(org.apache.aries.quiesce.api) = 1.0.0 osgi(org.apache.aries.util) = 1.1.0 osgi(org.apache.catalina) = 7.0.53 osgi(org.apache.catalina.ha) = 7.0.53 osgi(org.apache.catalina.tribes) = 7.0.53 osgi(org.apache.commons.codec) = 1.8.0 osgi(org.apache.commons.compress) = 1.4.1 osgi(org.apache.commons.exec) = 1.1 osgi(org.apache.commons.fileupload) = 1.2.2 osgi(org.apache.commons.io) = 2.4.0 osgi(org.apache.commons.lang) = 2.6 osgi(org.apache.commons.lang3) = 3.1.0 osgi(org.apache.commons.net) = 3.3.0 osgi(org.apache.coyote) = 7.0.53 osgi(org.apache.el) = 7.0.53 osgi(org.apache.felix.configadmin) = 1.6.0 osgi(org.apache.felix.dependencymanager) = 3.1.0 osgi(org.apache.felix.dependencymanager.shell) = 3.0.1 osgi(org.apache.felix.fileinstall) = 3.2.8 osgi(org.apache.felix.framework) = 4.2.1 osgi(org.apache.felix.gogo.command) = 0.8.0 osgi(org.apache.felix.gogo.runtime) = 0.10.0 osgi(org.apache.felix.gogo.runtime) = 0.6.0 osgi(org.apache.felix.gogo.runtime) = 0.8.0 osgi(org.apache.felix.gogo.shell) = 0.8.0 osgi(org.apache.felix.metatype) = 1.0.10 osgi(org.apache.felix.shell) = 1.4.1 osgi(org.apache.felix.webconsole) = 4.2.0 osgi(org.apache.geronimo.specs.geronimo-annotation_1.1_spec) = 1.0.1 osgi(org.apache.geronimo.specs.geronimo-jaspic_1.0_spec) = 1.1 osgi(org.apache.geronimo.specs.geronimo-jta_1.1_spec) = 1.1.1 osgi(org.apache.geronimo.specs.geronimo-servlet_3.0_spec) = 1.0 osgi(org.apache.jasper) = 7.0.53 osgi(org.apache.juli.extras) = 7.0.53 osgi(org.apache.karaf.bundle.command) = 3.0.1 osgi(org.apache.karaf.bundle.core) = 3.0.1 osgi(org.apache.karaf.client) = 3.0.1 osgi(org.apache.karaf.config.command) = 3.0.1 osgi(org.apache.karaf.config.core) = 3.0.1 osgi(org.apache.karaf.deployer.blueprint) = 3.0.1 osgi(org.apache.karaf.deployer.features) = 3.0.1 osgi(org.apache.karaf.deployer.kar) = 3.0.1 osgi(org.apache.karaf.deployer.spring) = 3.0.1 osgi(org.apache.karaf.deployer.wrap) = 3.0.1 osgi(org.apache.karaf.diagnostic.command) = 3.0.1 osgi(org.apache.karaf.diagnostic.core) = 3.0.1 osgi(org.apache.karaf.features.command) = 3.0.1 osgi(org.apache.karaf.features.core) = 3.0.1 osgi(org.apache.karaf.http.command) = 3.0.1 osgi(org.apache.karaf.http.core) = 3.0.1 osgi(org.apache.karaf.instance.command) = 3.0.1 osgi(org.apache.karaf.instance.core) = 3.0.1 osgi(org.apache.karaf.jaas.boot) = 3.0.1 osgi(org.apache.karaf.jaas.command) = 3.0.1 osgi(org.apache.karaf.jaas.config) = 3.0.1 osgi(org.apache.karaf.jaas.modules) = 3.0.1 osgi(org.apache.karaf.kar.command) = 3.0.1 osgi(org.apache.karaf.kar.core) = 3.0.1 osgi(org.apache.karaf.log.command) = 3.0.1 osgi(org.apache.karaf.log.core) = 3.0.1 osgi(org.apache.karaf.main) = 3.0.1 osgi(org.apache.karaf.management.boot) = 3.0.1 osgi(org.apache.karaf.management.server) = 3.0.1 osgi(org.apache.karaf.package.command) = 3.0.1 osgi(org.apache.karaf.package.core) = 3.0.1 osgi(org.apache.karaf.region.core) = 3.0.1 osgi(org.apache.karaf.service.command) = 3.0.1 osgi(org.apache.karaf.service.core) = 3.0.1 osgi(org.apache.karaf.service.guard) = 3.0.1 osgi(org.apache.karaf.shell.commands) = 3.0.1 osgi(org.apache.karaf.shell.console) = 3.0.1 osgi(org.apache.karaf.shell.help) = 3.0.1 osgi(org.apache.karaf.shell.ssh) = 3.0.1 osgi(org.apache.karaf.shell.table) = 3.0.1 osgi(org.apache.karaf.system.command) = 3.0.1 osgi(org.apache.karaf.system.core) = 3.0.1 osgi(org.apache.karaf.web.command) = 3.0.1 osgi(org.apache.karaf.web.core) = 3.0.1 osgi(org.apache.karaf.webconsole.features) = 3.0.1 osgi(org.apache.karaf.webconsole.gogo) = 3.0.1 osgi(org.apache.karaf.webconsole.http) = 3.0.1 osgi(org.apache.karaf.webconsole.instance) = 3.0.1 osgi(org.apache.mina.core) = 2.0.7 osgi(org.apache.oltu.oauth2.authzserver) = 1.0.0 osgi(org.apache.oltu.oauth2.common) = 1.0.0 osgi(org.apache.oltu.oauth2.resourceserver) = 1.0.0 osgi(org.apache.servicemix.bundles.ant) = 1.8.4 osgi(org.apache.servicemix.bundles.oro) = 2.0.8 osgi(org.apache.servicemix.specs.activation-api-1.1) = 2.2.0 osgi(org.apache.servicemix.specs.activation-api-1.1) = 2.4.0 osgi(org.apache.servicemix.specs.jaxb-api-2.2) = 2.4.0 osgi(org.apache.servicemix.specs.jaxp-api-1.4) = 2.4.0 osgi(org.apache.servicemix.specs.jaxws-api-2.2) = 2.4.0 osgi(org.apache.servicemix.specs.saaj-api-1.3) = 2.4.0 osgi(org.apache.servicemix.specs.stax-api-1.2) = 2.4.0 osgi(org.apache.sshd.core) = 0.12.0 osgi(org.apache.sshd.core) = 0.9.0 osgi(org.apache.tomcat.api) = 7.0.53 osgi(org.apache.tomcat.util) = 7.0.53 osgi(org.apache.xbean.asm-shaded) = 3.16.0 osgi(org.apache.xbean.bundleutils) = 3.16.0 osgi(org.apache.xbean.finder-shaded) = 3.16.0 osgi(org.apache.xbean.reflect) = 3.16 osgi(org.apache.xbean.xbean-reflect) = 3.4 osgi(org.codehaus.jettison.jettison) = 1.1 osgi(org.easymock) = 3.2.0 osgi(org.eclipse.aether.api) = 0.9.0 osgi(org.eclipse.aether.util) = 0.9.0 osgi(org.eclipse.equinox.cm) = 1.0.400 osgi(org.eclipse.equinox.console) = 1.0.0 osgi(org.eclipse.equinox.ds) = 1.4.0 osgi(org.eclipse.equinox.http.servlet) = 1.0.0 osgi(org.eclipse.equinox.launcher) = 1.3.0 osgi(org.eclipse.equinox.util) = 1.0.400 osgi(org.eclipse.gemini.web.core) = 2.2.0 osgi(org.eclipse.gemini.web.extender) = 2.2.0 osgi(org.eclipse.gemini.web.tomcat) = 2.2.0 osgi(org.eclipse.jdt.core.compiler.batch) = 3.8.0 osgi(org.eclipse.jdt.core.compiler.batch) = 3.8.2 osgi(org.eclipse.jetty.aggregate.jetty-all-server) = 8.1.14 osgi(org.eclipse.osgi) = 3.8.1 osgi(org.eclipse.osgi) = 3.8.2 osgi(org.eclipse.osgi.services) = 3.3.100 osgi(org.eclipse.persistence.antlr) = 3.2.0 osgi(org.eclipse.persistence.asm) = 3.3.1 osgi(org.eclipse.persistence.core) = 2.5.0 osgi(org.eclipse.persistence.moxy) = 2.5.0 osgi(org.eclipse.virgo.kernel.equinox.extensions) = 3.6.0 osgi(org.eclipse.virgo.util.common) = 3.6.0 osgi(org.eclipse.virgo.util.io) = 3.6.0 osgi(org.eclipse.virgo.util.math) = 3.6.0 osgi(org.eclipse.virgo.util.osgi) = 3.6.0 osgi(org.eclipse.virgo.util.osgi.manifest) = 3.6.0 osgi(org.eclipse.virgo.util.parser.manifest) = 3.6.0 osgi(org.eclipse.xtend.lib) = 2.4.3 osgi(org.fusesource.jansi) = 1.11 osgi(org.fusesource.jansi) = 1.9 osgi(org.fusesource.leveldbjni.leveldbjni-all) = 1.8.0 osgi(org.glassfish.hk2.api) = 2.1.88 osgi(org.glassfish.hk2.external.asm-all-repackaged) = 2.1.88 osgi(org.glassfish.hk2.external.cglib) = 2.1.88 osgi(org.glassfish.hk2.external.javax.inject) = 2.1.88 osgi(org.glassfish.hk2.locator) = 2.1.88 osgi(org.glassfish.hk2.osgi-resource-locator) = 1.0.1 osgi(org.glassfish.hk2.utils) = 2.1.88 osgi(org.glassfish.javax.json) = 1.0.4 osgi(org.glassfish.jersey.core.jersey-client) = 2.0.0 osgi(org.glassfish.jersey.core.jersey-common) = 2.0.0 osgi(org.glassfish.jersey.ext.jersey-proxy-client) = 2.0.0 osgi(org.infinispan.commons) = 6.0.2 osgi(org.infinispan.core) = 6.0.2 osgi(org.jboss.logging.jboss-logging) = 3.1.2 osgi(org.jboss.netty) = 3.8.0 osgi(org.jboss.spec.javax.transaction.jboss-transaction-api_1.1_spec) = 1.0.1 osgi(org.jgroups) = 3.4.1 osgi(org.jledit.core) = 0.2.1 osgi(org.jolokia.osgi) = 1.1.4 osgi(org.jsoup) = 1.6.1 osgi(org.objectweb.asm.all) = 4.1 osgi(org.objenesis) = 1.3.0 osgi(org.opendaylight.aaa.authn) = 0.1.1 osgi(org.opendaylight.aaa.authn-api) = 0.1.1 osgi(org.opendaylight.aaa.authn-basic) = 0.1.1 osgi(org.opendaylight.aaa.authn-federation) = 0.1.1 osgi(org.opendaylight.aaa.authn-idpmapping) = 0.1.1 osgi(org.opendaylight.aaa.authn-odl-plugin) = 0.1.1 osgi(org.opendaylight.aaa.authn-sssd) = 0.1.1 osgi(org.opendaylight.aaa.authn-store) = 0.1.1 osgi(org.opendaylight.aaa.authn-sts) = 0.1.1 osgi(org.opendaylight.aaa.authz-model) = 0.1.1 osgi(org.opendaylight.aaa.authz-service) = 0.1.1 osgi(org.opendaylight.aaa.idmlight) = 0.1.1 osgi(org.opendaylight.bgpcep.bgp-concepts) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-linkstate) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-parser-api) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-parser-impl) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-parser-mock) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-parser-spi) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-rib-api) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-rib-impl) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-rib-mock) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-rib-spi) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-topology-provider) = 0.3.2 osgi(org.opendaylight.bgpcep.bgp-util) = 0.3.2 osgi(org.opendaylight.bgpcep.concepts) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-api) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-ietf-stateful02) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-ietf-stateful07) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-impl) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-segment-routing) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-spi) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-topology-api) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-topology-provider) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-topology-spi) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-tunnel-api) = 0.3.2 osgi(org.opendaylight.bgpcep.pcep-tunnel-provider) = 0.3.2 osgi(org.opendaylight.bgpcep.programming-api) = 0.3.2 osgi(org.opendaylight.bgpcep.programming-impl) = 0.3.2 osgi(org.opendaylight.bgpcep.programming-spi) = 0.3.2 osgi(org.opendaylight.bgpcep.programming-topology-api) = 0.3.2 osgi(org.opendaylight.bgpcep.programming-tunnel-api) = 0.3.2 osgi(org.opendaylight.bgpcep.rsvp-api) = 0.3.2 osgi(org.opendaylight.bgpcep.topology-api) = 0.3.2 osgi(org.opendaylight.bgpcep.topology-segment-routing) = 0.3.2 osgi(org.opendaylight.bgpcep.topology-tunnel-api) = 0.3.2 osgi(org.opendaylight.bgpcep.util) = 0.3.2 osgi(org.opendaylight.controller.appauth) = 0.4.3 osgi(org.opendaylight.controller.arphandler) = 0.5.3 osgi(org.opendaylight.controller.bundlescanner) = 0.4.3 osgi(org.opendaylight.controller.bundlescanner.implementation) = 0.4.3 osgi(org.opendaylight.controller.clustering.services) = 0.5.2 osgi(org.opendaylight.controller.clustering.services-implementation) = 0.4.4 osgi(org.opendaylight.controller.clustering.stub) = 0.4.3 osgi(org.opendaylight.controller.commons.northbound) = 0.4.3 osgi(org.opendaylight.controller.config-api) = 0.2.6 osgi(org.opendaylight.controller.config-manager) = 0.2.6 osgi(org.opendaylight.controller.config-netconf-connector) = 0.2.6 osgi(org.opendaylight.controller.config-persister-api) = 0.2.6 osgi(org.opendaylight.controller.config-persister-directory-xml-adapter) = 0.2.6 osgi(org.opendaylight.controller.config-persister-file-xml-adapter) = 0.2.6 osgi(org.opendaylight.controller.config-persister-impl) = 0.2.6 osgi(org.opendaylight.controller.config-util) = 0.2.6 osgi(org.opendaylight.controller.configuration) = 0.4.4 osgi(org.opendaylight.controller.configuration.implementation) = 0.4.4 osgi(org.opendaylight.controller.connectionmanager) = 0.1.3 osgi(org.opendaylight.controller.connectionmanager.implementation) = 0.1.3 osgi(org.opendaylight.controller.connectionmanager.northbound) = 0.1.3 osgi(org.opendaylight.controller.containermanager) = 0.5.3 osgi(org.opendaylight.controller.containermanager.implementation) = 0.5.3 osgi(org.opendaylight.controller.containermanager.northbound) = 0.4.3 osgi(org.opendaylight.controller.containermanager.shell) = 0.5.3 osgi(org.opendaylight.controller.devices.web) = 0.4.3 osgi(org.opendaylight.controller.dummy-console) = 1.1.1 osgi(org.opendaylight.controller.flowprogrammer.northbound) = 0.4.3 osgi(org.opendaylight.controller.flows.web) = 0.4.3 osgi(org.opendaylight.controller.forwarding.staticrouting) = 0.5.3 osgi(org.opendaylight.controller.forwarding.staticrouting.northbound) = 0.4.3 osgi(org.opendaylight.controller.forwardingrulesmanager) = 0.6.1 osgi(org.opendaylight.controller.forwardingrulesmanager.implementation) = 0.4.3 osgi(org.opendaylight.controller.hosttracker) = 0.5.3 osgi(org.opendaylight.controller.hosttracker.implementation) = 0.5.3 osgi(org.opendaylight.controller.hosttracker.northbound) = 0.4.3 osgi(org.opendaylight.controller.hosttracker.shell) = 1.0.1 osgi(org.opendaylight.controller.httpservice-bridge) = 0.0.3 osgi(org.opendaylight.controller.ietf-netconf-monitoring) = 0.2.6 osgi(org.opendaylight.controller.ietf-netconf-monitoring-extension) = 0.2.6 osgi(org.opendaylight.controller.jolokia-bridge) = 0.0.3 osgi(org.opendaylight.controller.karaf-tomcat-security) = 0.4.3 osgi(org.opendaylight.controller.liblldp) = 0.8.2 osgi(org.opendaylight.controller.logging.bridge) = 0.4.3 osgi(org.opendaylight.controller.md.forwardingrules-manager) = 1.1.1 osgi(org.opendaylight.controller.md.inventory-manager) = 1.1.1 osgi(org.opendaylight.controller.md.statistics-manager) = 1.1.1 osgi(org.opendaylight.controller.md.topology-lldp-discovery) = 1.1.1 osgi(org.opendaylight.controller.md.topology-manager) = 1.1.1 osgi(org.opendaylight.controller.model.flow-base) = 1.1.1 osgi(org.opendaylight.controller.model.flow-service) = 1.1.1 osgi(org.opendaylight.controller.model.flow-statistics) = 1.1.1 osgi(org.opendaylight.controller.model.inventory) = 1.1.1 osgi(org.opendaylight.controller.model.topology) = 1.1.1 osgi(org.opendaylight.controller.netconf-api) = 0.2.6 osgi(org.opendaylight.controller.netconf-auth) = 0.2.6 osgi(org.opendaylight.controller.netconf-client) = 0.2.6 osgi(org.opendaylight.controller.netconf-config-dispatcher) = 0.2.6 osgi(org.opendaylight.controller.netconf-impl) = 0.2.6 osgi(org.opendaylight.controller.netconf-mapping-api) = 0.2.6 osgi(org.opendaylight.controller.netconf-monitoring) = 0.2.6 osgi(org.opendaylight.controller.netconf-netty-util) = 0.2.6 osgi(org.opendaylight.controller.netconf-ssh) = 0.2.6 osgi(org.opendaylight.controller.netconf-tcp) = 0.2.6 osgi(org.opendaylight.controller.netconf-util) = 0.2.6 osgi(org.opendaylight.controller.netty-config-api) = 0.2.6 osgi(org.opendaylight.controller.netty-event-executor-config) = 0.2.6 osgi(org.opendaylight.controller.netty-threadgroup-config) = 0.2.6 osgi(org.opendaylight.controller.netty-timer-config) = 0.2.6 osgi(org.opendaylight.controller.networkconfig.bridgedomain.northbound) = 0.0.4 osgi(org.opendaylight.controller.networkconfig.neutron) = 0.4.3 osgi(org.opendaylight.controller.networkconfig.neutron.implementation) = 0.4.3 osgi(org.opendaylight.controller.networkconfig.neutron.northbound) = 0.4.3 osgi(org.opendaylight.controller.osgi-brandfragment.web) = 0.0.3 osgi(org.opendaylight.controller.protocol-framework) = 0.5.1 osgi(org.opendaylight.controller.routing.dijkstra_implementation) = 0.4.3 osgi(org.opendaylight.controller.sal) = 0.8.2 osgi(org.opendaylight.controller.sal-akka-raft) = 1.1.1 osgi(org.opendaylight.controller.sal-binding-api) = 1.1.1 osgi(org.opendaylight.controller.sal-binding-broker-impl) = 1.1.1 osgi(org.opendaylight.controller.sal-binding-config) = 1.1.1 osgi(org.opendaylight.controller.sal-binding-util) = 1.1.1 osgi(org.opendaylight.controller.sal-broker-impl) = 1.1.1 osgi(org.opendaylight.controller.sal-clustering-commons) = 1.1.1 osgi(org.opendaylight.controller.sal-common) = 1.1.1 osgi(org.opendaylight.controller.sal-common-api) = 1.1.1 osgi(org.opendaylight.controller.sal-common-impl) = 1.1.1 osgi(org.opendaylight.controller.sal-common-util) = 1.1.1 osgi(org.opendaylight.controller.sal-compatibility) = 1.1.1 osgi(org.opendaylight.controller.sal-connector-api) = 1.1.1 osgi(org.opendaylight.controller.sal-core-api) = 1.1.1 osgi(org.opendaylight.controller.sal-core-spi) = 1.1.1 osgi(org.opendaylight.controller.sal-distributed-datastore) = 1.1.1 osgi(org.opendaylight.controller.sal-dom-xsql) = 1.1.1 osgi(org.opendaylight.controller.sal-inmemory-datastore) = 1.1.1 osgi(org.opendaylight.controller.sal-netconf-connector) = 1.1.1 osgi(org.opendaylight.controller.sal-remote) = 1.1.1 osgi(org.opendaylight.controller.sal-remoterpc-connector) = 1.1.1 osgi(org.opendaylight.controller.sal-rest-connector) = 1.1.1 osgi(org.opendaylight.controller.sal-rest-docgen) = 1.1.1 osgi(org.opendaylight.controller.sal.connection) = 0.1.3 osgi(org.opendaylight.controller.sal.connection.implementation) = 0.1.3 osgi(org.opendaylight.controller.sal.implementation) = 0.4.3 osgi(org.opendaylight.controller.sal.networkconfiguration) = 0.0.4 osgi(org.opendaylight.controller.sal.networkconfiguration.implementation) = 0.0.4 osgi(org.opendaylight.controller.samples.clustering-it-model) = 1.1.1 osgi(org.opendaylight.controller.samples.clustering-it-provider) = 1.1.1 osgi(org.opendaylight.controller.samples.loadbalancer) = 0.5.3 osgi(org.opendaylight.controller.samples.loadbalancer.northbound) = 0.4.3 osgi(org.opendaylight.controller.samples.sample-toaster) = 1.1.1 osgi(org.opendaylight.controller.samples.sample-toaster-consumer) = 1.1.1 osgi(org.opendaylight.controller.samples.sample-toaster-provider) = 1.1.1 osgi(org.opendaylight.controller.samples.simpleforwarding) = 0.4.3 osgi(org.opendaylight.controller.security) = 0.4.3 osgi(org.opendaylight.controller.shutdown-api) = 0.2.6 osgi(org.opendaylight.controller.shutdown-impl) = 0.2.6 osgi(org.opendaylight.controller.statistics.northbound) = 0.4.3 osgi(org.opendaylight.controller.statisticsmanager) = 0.5.2 osgi(org.opendaylight.controller.statisticsmanager.implementation) = 0.4.3 osgi(org.opendaylight.controller.subnets.northbound) = 0.4.3 osgi(org.opendaylight.controller.switchmanager) = 0.7.2 osgi(org.opendaylight.controller.switchmanager.implementation) = 0.4.3 osgi(org.opendaylight.controller.switchmanager.northbound) = 0.4.3 osgi(org.opendaylight.controller.thirdparty.com.sun.jersey.jersey-servlet) = 1.17.0 osgi(org.opendaylight.controller.thirdparty.ganymed) = 1.1.1 osgi(org.opendaylight.controller.thirdparty.net.sf.jung2) = 2.0.1 osgi(org.opendaylight.controller.thirdparty.org.apache.catalina.filters.CorsFilter) = 7.0.42 osgi(org.opendaylight.controller.thirdparty.org.openflow.openflowj) = 1.0.2 osgi(org.opendaylight.controller.threadpool-config-api) = 0.2.6 osgi(org.opendaylight.controller.threadpool-config-impl) = 0.2.6 osgi(org.opendaylight.controller.topology.northbound) = 0.4.3 osgi(org.opendaylight.controller.topology.web) = 0.4.3 osgi(org.opendaylight.controller.topologymanager) = 0.4.3 osgi(org.opendaylight.controller.topologymanager.shell) = 1.0.1 osgi(org.opendaylight.controller.troubleshoot.web) = 0.4.3 osgi(org.opendaylight.controller.usermanager) = 0.4.3 osgi(org.opendaylight.controller.usermanager.implementation) = 0.4.3 osgi(org.opendaylight.controller.usermanager.northbound) = 0.0.3 osgi(org.opendaylight.controller.web) = 0.4.3 osgi(org.opendaylight.controller.yang-jmx-generator) = 0.2.6 osgi(org.opendaylight.dlux.web) = 0.1.1 osgi(org.opendaylight.groupbasedpolicy) = 0.1.1 osgi(org.opendaylight.l2switch.addresstracker.impl) = 0.1.1 osgi(org.opendaylight.l2switch.addresstracker.model) = 0.1.1 osgi(org.opendaylight.l2switch.arphandler.impl) = 0.1.1 osgi(org.opendaylight.l2switch.hosttracker.impl) = 0.1.1 osgi(org.opendaylight.l2switch.hosttracker.model) = 0.1.1 osgi(org.opendaylight.l2switch.loopremover.impl) = 0.1.1 osgi(org.opendaylight.l2switch.loopremover.model) = 0.1.1 osgi(org.opendaylight.l2switch.main.impl) = 0.1.1 osgi(org.opendaylight.l2switch.packethandler.impl) = 0.1.1 osgi(org.opendaylight.l2switch.packethandler.model) = 0.1.1 osgi(org.opendaylight.lispflowmapping.mappingservice.api) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.clusterdao) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.config) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.implementation) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.netconf) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.neutron) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.northbound) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.southbound) = 1.1.12 osgi(org.opendaylight.lispflowmapping.mappingservice.yangmodel) = 1.1.12 osgi(org.opendaylight.openflowjava.openflow-protocol-api) = 0.5.1 osgi(org.opendaylight.openflowjava.openflow-protocol-impl) = 0.5.1 osgi(org.opendaylight.openflowjava.openflow-protocol-spi) = 0.5.1 osgi(org.opendaylight.openflowjava.util) = 0.5.1 osgi(org.opendaylight.openflowplugin) = 0.0.4 osgi(org.opendaylight.openflowplugin.api) = 0.0.4 osgi(org.opendaylight.openflowplugin.applications.table-miss-enforcer) = 0.0.4 osgi(org.opendaylight.openflowplugin.drop-test-karaf) = 0.0.4 osgi(org.opendaylight.openflowplugin.extension-api) = 0.0.4 osgi(org.opendaylight.openflowplugin.extension-nicira) = 0.0.4 osgi(org.opendaylight.openflowplugin.openflowjava-extension-nicira) = 0.0.4 osgi(org.opendaylight.openflowplugin.openflowjava-extension-nicira-api) = 0.0.4 osgi(org.opendaylight.openflowplugin.test-common) = 0.0.4 osgi(org.opendaylight.ovsdb.library) = 1.0.1 osgi(org.opendaylight.ovsdb.northbound) = 0.6.1 osgi(org.opendaylight.ovsdb.of-extension.nx-ofjava) = 1.0.1 osgi(org.opendaylight.ovsdb.of-extension.nx-sal) = 1.0.1 osgi(org.opendaylight.ovsdb.openstack.net-virt) = 1.0.1 osgi(org.opendaylight.ovsdb.openstack.net-virt-providers) = 1.0.1 osgi(org.opendaylight.ovsdb.ovssfc) = 0.0.2 osgi(org.opendaylight.ovsdb.plugin) = 1.0.1 osgi(org.opendaylight.ovsdb.plugin-shell) = 1.0.1 osgi(org.opendaylight.ovsdb.schema.hardwarevtep) = 1.0.1 osgi(org.opendaylight.ovsdb.schema.openvswitch) = 1.0.1 osgi(org.opendaylight.packetcable.consumer) = 1.1.1 osgi(org.opendaylight.packetcable.driver) = 1.1.1 osgi(org.opendaylight.packetcable.model) = 1.1.1 osgi(org.opendaylight.packetcable.provider) = 1.1.1 osgi(org.opendaylight.plugin2oc.neutron) = 0.1.1 osgi(org.opendaylight.sdninterfaceapp.sdni) = 0.5.3 osgi(org.opendaylight.sdninterfaceapp.sdniaggregator) = 0.5.3 osgi(org.opendaylight.sfc.lisp) = 0.0.2 osgi(org.opendaylight.sfc.model) = 0.0.2 osgi(org.opendaylight.sfc.ofl2) = 0.0.2 osgi(org.opendaylight.sfc.provider) = 0.0.2 osgi(org.opendaylight.sfc.test-consumer) = 0.0.2 osgi(org.opendaylight.sfc.ui) = 0.0.2 osgi(org.opendaylight.snbi.shellplugin) = 1.0.1 osgi(org.opendaylight.snbi.southplugin) = 1.0.1 osgi(org.opendaylight.snmp4sdn) = 0.1.4 osgi(org.opendaylight.snmp4sdn.org.snmpj) = 1.4.6 osgi(org.opendaylight.snmp4sdn.plugin-shell) = 0.1.4 osgi(org.opendaylight.snmp4sdn.vlanmd-model) = 0.1.4 osgi(org.opendaylight.tcpmd5.api) = 1.0.1 osgi(org.opendaylight.tcpmd5.jni) = 1.0.1 osgi(org.opendaylight.tcpmd5.netty) = 1.0.1 osgi(org.opendaylight.tcpmd5.nio) = 1.0.1 osgi(org.opendaylight.ttp.model) = 0.0.2 osgi(org.opendaylight.vtn.manager) = 0.2.1 osgi(org.opendaylight.vtn.manager.implementation) = 0.2.1 osgi(org.opendaylight.vtn.manager.neutron) = 0.2.1 osgi(org.opendaylight.vtn.manager.northbound) = 0.2.1 osgi(org.opendaylight.yangtools.binding-data-codec) = 0.6.3 osgi(org.opendaylight.yangtools.binding-generator-api) = 0.6.3 osgi(org.opendaylight.yangtools.binding-generator-impl) = 0.6.3 osgi(org.opendaylight.yangtools.binding-generator-spi) = 0.6.3 osgi(org.opendaylight.yangtools.binding-generator-util) = 0.6.3 osgi(org.opendaylight.yangtools.binding-model-api) = 0.6.3 osgi(org.opendaylight.yangtools.binding-type-provider) = 0.6.3 osgi(org.opendaylight.yangtools.concepts) = 0.6.3 osgi(org.opendaylight.yangtools.features-test) = 0.6.3 osgi(org.opendaylight.yangtools.model.ietf-inet-types) = 2010.09.24 osgi(org.opendaylight.yangtools.model.ietf-restconf) = 2013.10.19 osgi(org.opendaylight.yangtools.model.ietf-ted) = 2013.10.21 osgi(org.opendaylight.yangtools.model.ietf-topology) = 2013.10.21 osgi(org.opendaylight.yangtools.model.ietf-topology-isis) = 2013.10.21 osgi(org.opendaylight.yangtools.model.ietf-topology-l3-unicast-igp) = 2013.10.21 osgi(org.opendaylight.yangtools.model.ietf-topology-ospf) = 2013.10.21 osgi(org.opendaylight.yangtools.model.ietf-yang-types) = 2010.09.24 osgi(org.opendaylight.yangtools.model.ietf-yang-types-20130715) = 2013.07.15 osgi(org.opendaylight.yangtools.model.opendaylight-l2-types) = 2013.08.27 osgi(org.opendaylight.yangtools.model.yang-ext) = 2013.09.07 osgi(org.opendaylight.yangtools.object-cache-api) = 0.6.3 osgi(org.opendaylight.yangtools.object-cache-guava) = 0.6.3 osgi(org.opendaylight.yangtools.object-cache-noop) = 0.6.3 osgi(org.opendaylight.yangtools.restconf-client-api) = 0.6.3 osgi(org.opendaylight.yangtools.restconf-client-impl) = 0.6.3 osgi(org.opendaylight.yangtools.restconf-common) = 0.6.3 osgi(org.opendaylight.yangtools.restconf-jaxrs-api) = 0.6.3 osgi(org.opendaylight.yangtools.restconf-util) = 0.6.3 osgi(org.opendaylight.yangtools.util) = 0.6.3 osgi(org.opendaylight.yangtools.websocket-client) = 0.6.3 osgi(org.opendaylight.yangtools.yang-binding) = 0.6.3 osgi(org.opendaylight.yangtools.yang-common) = 0.6.3 osgi(org.opendaylight.yangtools.yang-data-api) = 0.6.3 osgi(org.opendaylight.yangtools.yang-data-codec-gson) = 0.6.3 osgi(org.opendaylight.yangtools.yang-data-composite-node) = 0.6.3 osgi(org.opendaylight.yangtools.yang-data-impl) = 0.6.3 osgi(org.opendaylight.yangtools.yang-data-operations) = 0.6.3 osgi(org.opendaylight.yangtools.yang-data-util) = 0.6.3 osgi(org.opendaylight.yangtools.yang-maven-plugin-spi) = 0.6.3 osgi(org.opendaylight.yangtools.yang-model-api) = 0.6.3 osgi(org.opendaylight.yangtools.yang-model-util) = 0.6.3 osgi(org.opendaylight.yangtools.yang-parser-api) = 0.6.3 osgi(org.opendaylight.yangtools.yang-parser-impl) = 0.6.3 osgi(org.openexi.nagasena) = 0000.0002.0038 osgi(org.openexi.nagasena-rta) = 0000.0002.0038 osgi(org.ops4j.base.exec) = 1.4.0 osgi(org.ops4j.base.io) = 1.4.0 osgi(org.ops4j.base.lang) = 1.4.0 osgi(org.ops4j.base.monitors) = 1.4.0 osgi(org.ops4j.base.net) = 1.4.0 osgi(org.ops4j.base.spi) = 1.4.0 osgi(org.ops4j.base.store) = 1.4.0 osgi(org.ops4j.base.util.collections) = 1.4.0 osgi(org.ops4j.base.util.property) = 1.4.0 osgi(org.ops4j.base.util.xml) = 1.4.0 osgi(org.ops4j.pax.exam) = 3.5.0 osgi(org.ops4j.pax.exam.rbc) = 3.5.0 osgi(org.ops4j.pax.logging.pax-logging-api) = 1.7.2 osgi(org.ops4j.pax.logging.pax-logging-service) = 1.7.2 osgi(org.ops4j.pax.swissbox.bnd) = 1.7.0 osgi(org.ops4j.pax.swissbox.core) = 1.6.0 osgi(org.ops4j.pax.swissbox.core) = 1.7.0 osgi(org.ops4j.pax.swissbox.framework) = 1.7.0 osgi(org.ops4j.pax.swissbox.lifecycle) = 1.7.0 osgi(org.ops4j.pax.swissbox.optional.jcl) = 1.6.0 osgi(org.ops4j.pax.swissbox.pax-swissbox-bnd) = 1.6.0 osgi(org.ops4j.pax.swissbox.property) = 1.6.0 osgi(org.ops4j.pax.swissbox.property) = 1.7.0 osgi(org.ops4j.pax.swissbox.tracker) = 1.7.0 osgi(org.ops4j.pax.tinybundles) = 2.0.0 osgi(org.ops4j.pax.url.commons) = 1.4.2 osgi(org.ops4j.pax.url.commons) = 1.6.0 osgi(org.ops4j.pax.url.maven.commons) = 1.6.0 osgi(org.ops4j.pax.url.mvn) = 1.6.0 osgi(org.ops4j.pax.url.war) = 1.4.2 osgi(org.ops4j.pax.url.wrap) = 1.6.0 osgi(org.ops4j.pax.web.pax-web-api) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-deployer) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-extender-war) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-extender-whiteboard) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-jetty) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-jsp) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-runtime) = 3.1.0 osgi(org.ops4j.pax.web.pax-web-spi) = 3.1.0 osgi(org.scala-lang.scala-library) = 2.10.4 osgi(org.scala-lang.scala-reflect) = 2.10.4 osgi(org.sonatype.inject) = 2.2.3 osgi(org.sonatype.inject.plexus) = 2.2.3 osgi(org.sonatype.sisu.guava) = 0.9.9 osgi(org.sonatype.sisu.guice) = 3.0.3 osgi(org.springframework.aop) = 3.0.7 osgi(org.springframework.aop) = 3.1.3 osgi(org.springframework.asm) = 3.0.7 osgi(org.springframework.asm) = 3.1.3 osgi(org.springframework.beans) = 3.0.7 osgi(org.springframework.beans) = 3.1.3 osgi(org.springframework.context) = 3.0.7 osgi(org.springframework.context) = 3.1.3 osgi(org.springframework.context.support) = 3.1.3 osgi(org.springframework.core) = 3.0.7 osgi(org.springframework.core) = 3.1.3 osgi(org.springframework.expression) = 3.0.7 osgi(org.springframework.expression) = 3.1.3 osgi(org.springframework.jdbc) = 3.0.7 osgi(org.springframework.security.acls) = 3.1.3 osgi(org.springframework.security.config) = 3.1.3 osgi(org.springframework.security.core) = 3.1.3 osgi(org.springframework.security.taglibs) = 3.1.3 osgi(org.springframework.security.web) = 3.1.3 osgi(org.springframework.transaction) = 3.0.7 osgi(org.springframework.transaction) = 3.1.3 osgi(org.springframework.web) = 3.0.7 osgi(org.springframework.web) = 3.1.3 osgi(org.springframework.web.servlet) = 3.1.3 osgi(osgi.cmpn) = 5.0.0 osgi(osgi.core) = 5.0.0 osgi(sal-karaf-xsql) = 1.1.1 osgi(slf4j.api) = 1.7.5 osgi(slf4j.jdk14) = 1.7.5 osgi(slf4j.log4j12) = 1.7.2 osgi(slf4j.simple) = 1.7.2
Requires(interp): /bin/sh /bin/sh
Requires(rpmlib): rpmlib(CompressedFileNames) <= 3.0.4-1 rpmlib(FileDigests) <= 4.6.0-1 rpmlib(PayloadFilesHavePrefix) <= 4.0-1
Requires(pre): /bin/sh shadow-utils
Requires(postun): /bin/sh
Requires: /bin/sh osgi(org.eclipse.persistence.core) osgi(org.opendaylight.controller.hosttracker) osgi(slf4j.api)
Checking for unpackaged file(s): /usr/lib/rpm/check-files /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64
Wrote: /home/fedora/rpmbuild/SRPMS/opendaylight-0.2.1-5.fc20.src.rpm
Wrote: /home/fedora/rpmbuild/RPMS/noarch/opendaylight-0.2.1-5.fc20.noarch.rpm
Executing(%clean): /bin/sh -e /var/tmp/rpm-tmp.UCQYWX
+ umask 022
+ cd /home/fedora/rpmbuild/BUILD
+ cd opendaylight-systemd-520321a932a15392a67f45bae52e879c703a2c85
+ /usr/bin/rm -rf /home/fedora/rpmbuild/BUILDROOT/opendaylight-0.2.1-5.fc20.x86_64
+ exit 0
RPM built!
Should be at: /home/fedora/rpmbuild/RPMS/noarch/opendaylight-0.2.1-5.fc20.noarch.rpm
```

## Installing RPM

```
[fedora@dfarrell-rpm ~]$ ls /opt/
[fedora@dfarrell-rpm ~]$ ls /usr/lib/systemd/system | grep -i opendaylight
[fedora@dfarrell-rpm ~]$ sudo rpm -i /home/fedora/rpmbuild/RPMS/noarch/opendaylight-0.2.1-5.fc20.noarch.rpm
[fedora@dfarrell-rpm ~]$ ls /opt/
opendaylight-0.2.1
[fedora@dfarrell-rpm ~]$ ls /usr/lib/systemd/system | grep -i opendaylight
opendaylight.service
```

As a shortcut, the `install.sh` script does the same thing.

## Starting OpenDaylight via systemd

```
[fedora@dfarrell-rpm ~]$ sudo systemctl start opendaylight
[fedora@dfarrell-rpm ~]$ sudo systemctl status opendaylight
opendaylight.service - OpenDaylight SDN Controller
   Loaded: loaded (/usr/lib/systemd/system/opendaylight.service; disabled)
   Active: active (running) since Tue 2015-01-13 21:43:05 UTC; 14s ago
     Docs: https://wiki.opendaylight.org/view/Main_Page
           http://www.opendaylight.org/
 Main PID: 28731 (java)
   CGroup: /system.slice/opendaylight.service
           └─28731 java -server -Xms128M -Xmx2048m -XX:+UnlockDiagnosticVMOptions -XX:+UnsyncloadClass -XX:MaxPermSize=512m -Dcom.sun.manage...

Jan 13 21:43:14 dfarrell-rpm systemd[1]: Started OpenDaylight SDN Controller.
```

## Connecting to Karaf shell

I recomend using `connect.sh` for this, as it handles details you mostly don't care about.

Note that it will take ~15 seconds for ODL to start enough for the Karaf shell to be accessible.

Here's an example of connecting manually (password: `karaf`):

```
[fedora@dfarrell-rpm ~]$ ssh -p 8101 -o StrictHostKeyChecking=no karaf@localhost
Authenticated with partial success.
Password authentication
Password: 
                                                                                           
    ________                       ________                .__  .__       .__     __       
    \_____  \ ______   ____   ____ \______ \ _____  ___.__.|  | |__| ____ |  |___/  |_     
     /   |   \\____ \_/ __ \ /    \ |    |  \\__  \<   |  ||  | |  |/ ___\|  |  \   __\    
    /    |    \  |_> >  ___/|   |  \|    `   \/ __ \\___  ||  |_|  / /_/  >   Y  \  |      
    \_______  /   __/ \___  >___|  /_______  (____  / ____||____/__\___  /|___|  /__|      
            \/|__|        \/     \/        \/     \/\/            /_____/      \/          
                                                                                           

Hit '<tab>' for a list of available commands
and '[cmd] --help' for help on a specific command.
Hit '<ctrl-d>' or type 'system:shutdown' or 'logout' to shutdown OpenDaylight.

opendaylight-user@root>^D
Connection to localhost closed.
[fedora@dfarrell-rpm ~]$ 
```
