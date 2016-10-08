# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/webbit-0.4.14.pom --download-uri http://central.maven.org/maven2/org/webbitserver/webbit/0.4.14/webbit-0.4.14-sources.jar --slot 0 --keywords "~amd64" --ebuild webbit-0.4.14.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A Java event based WebSocket and HTTP server"
HOMEPAGE="http://webbitserver.org/"
SRC_URI="http://central.maven.org/maven2/org/webbitserver/webbit/0.4.14/webbit-0.4.14-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.webbitserver:webbit:0.4.14"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/webbit-0.4.14.pom
# io.netty:netty:3.5.2.Final -> >=app-maven/netty-3.8.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/webbit-0.4.14.pom
CDEPEND="
	>=app-maven/netty-3.8.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="netty"
