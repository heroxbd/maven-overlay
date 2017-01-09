# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-example-4.0.29.Final.pom --download-uri http://central.maven.org/maven2/io/netty/netty-example/4.0.29.Final/netty-example-4.0.29.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild netty-example-4.0.29.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Netty is an asynchronous event-driven network application framework for
    rapid development of maintainable high performance protocol servers and
    clients."
HOMEPAGE="http://netty.io/netty-example/"
SRC_URI="http://central.maven.org/maven2/io/netty/netty-example/4.0.29.Final/netty-example-4.0.29.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="io.netty:netty-example:4.0.29.Final"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-example-4.0.29.Final.pom
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# com.yammer.metrics:metrics-core:2.2.0 -> >=app-maven/metrics-core-2.2.0:0
# io.netty:netty-codec-http:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-codec-socks:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-handler:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-tcnative:1.1.33.Fork3 -> >=dev-java/netty-tcnative-1.1.33.15:0
# io.netty:netty-transport:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport-rxtx:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport-sctp:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-transport-udt:4.0.29.Final -> >=dev-java/netty-transport-4.0.36:0
# org.eclipse.jetty.npn:npn-api:1.1.1.v20141010 -> >=app-maven/npn-api-1.1.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-example-4.0.29.Final.pom
CDEPEND="
	>=app-maven/metrics-core-2.2.0:0
	>=app-maven/npn-api-1.1.1:0
	>=app-maven/protobuf-java-2.5.0:0
	>=dev-java/netty-tcnative-1.1.33.15:0
	>=dev-java/netty-transport-4.0.36:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"
# Runtime dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-example-4.0.29.Final.pom
# ch.qos.logback:logback-classic:1.0.13 -> >=dev-java/logback-1.0.13:0
# com.jcraft:jzlib:1.1.2 -> >=dev-java/jzlib-1.1.1:1.1
# org.javassist:javassist:3.19.0-GA -> >=dev-java/javassist-3.18.2:3
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=dev-java/javassist-3.18.2:3
	>=dev-java/jzlib-1.1.1:1.1
	>=dev-java/logback-1.0.13:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java,metrics-core,netty-transport,netty-transport,netty-transport,netty-tcnative,netty-transport,netty-transport,netty-transport,netty-transport,npn-api,logback,jzlib-1.1,javassist-3"
