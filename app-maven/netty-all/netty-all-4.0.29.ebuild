# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-all-4.0.29.Final.pom --download-uri http://central.maven.org/maven2/io/netty/netty-all/4.0.29.Final/netty-all-4.0.29.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild netty-all-4.0.29.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Netty is an asynchronous event-driven network application framework for
    rapid development of maintainable high performance protocol servers and
    clients."
HOMEPAGE="http://netty.io/netty-all/"
SRC_URI="http://central.maven.org/maven2/io/netty/netty-all/4.0.29.Final/netty-all-4.0.29.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="io.netty:netty-all:4.0.29.Final"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-all-4.0.29.Final.pom
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# commons-logging:commons-logging:1.1.3 -> >=dev-java/commons-logging-1.2:0
# io.netty:netty-buffer:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-codec:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-codec-haproxy:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-codec-http:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-codec-socks:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-common:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-example:4.0.29.Final -> >=app-maven/netty-example-4.0.29:0
# io.netty:netty-handler:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport-native-epoll:4.0.29.Final -> >=app-maven/netty-transport-native-epoll-4.0.29:0
# io.netty:netty-transport-rxtx:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport-sctp:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport-udt:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# org.jboss.marshalling:jboss-marshalling:1.3.18.GA -> >=app-maven/jboss-marshalling-1.3.14:0
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-all-4.0.29.Final.pom
CDEPEND="
	>=app-maven/jboss-marshalling-1.3.14:0
	>=app-maven/netty-example-4.0.29:0
	>=app-maven/netty-transport-native-epoll-4.0.29:0
	>=app-maven/protobuf-java-2.5.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/log4j-1.2.17:0
	>=dev-java/netty-transport-4.0.36:0
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java,commons-logging,netty-transport,netty-transport,netty-transport,netty-transport,netty-transport,netty-transport,netty-example,netty-transport,netty-transport,netty-transport-native-epoll,netty-transport,netty-transport,netty-transport,log4j,jboss-marshalling,slf4j-log4j12"
