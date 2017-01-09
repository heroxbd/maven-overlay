# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-3.2.2.Final.pom --download-uri http://central.maven.org/maven2/org/jboss/netty/netty/3.2.2.Final/netty-3.2.2.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild netty-3.2.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Netty project is an effort to provide an asynchronous event-driven
    network application framework and tools for rapid development of
    maintainable high performance and high scalability protocol servers and
    clients.  In other words, Netty is a NIO client server framework which
    enables quick and easy development of network applications such as protocol
    servers and clients. It greatly simplifies and streamlines network
    programming such as TCP and UDP socket server."
HOMEPAGE="http://www.jboss.org/netty/"
SRC_URI="http://central.maven.org/maven2/org/jboss/netty/netty/3.2.2.Final/netty-3.2.2.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.netty:netty:3.2.2.Final"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-3.2.2.Final.pom
# com.google.protobuf:protobuf-java:2.3.0 -> >=app-maven/protobuf-java-2.5.0:0
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# log4j:log4j:1.2.16 -> >=dev-java/log4j-1.2.17:0
# org.apache.felix:org.osgi.compendium:1.4.0 -> >=app-maven/org-osgi-compendium-1.4.0:0
# org.apache.felix:org.osgi.core:1.4.0 -> >=app-maven/org-osgi-core-1.4.0:0
# org.jboss.logging:jboss-logging-spi:2.1.1.GA -> >=app-maven/jboss-logging-spi-2.1.2:0
# org.slf4j:slf4j-api:1.5.11 -> >=dev-java/slf4j-nop-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-3.2.2.Final.pom
CDEPEND="
	>=app-maven/jboss-logging-spi-2.1.2:0
	>=app-maven/org-osgi-compendium-1.4.0:0
	>=app-maven/org-osgi-core-1.4.0:0
	>=app-maven/protobuf-java-2.5.0:0
	>=app-maven/servlet-api-2.5:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/log4j-1.2.17:0
	>=dev-java/slf4j-nop-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.5
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.5"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="protobuf-java,commons-logging,servlet-api,log4j,org-osgi-compendium,org-osgi-core,jboss-logging-spi,slf4j-nop"
