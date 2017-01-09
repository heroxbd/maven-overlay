# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-codec-http2-4.1.0.Beta6.pom --download-uri http://central.maven.org/maven2/io/netty/netty-codec-http2/4.1.0.Beta6/netty-codec-http2-4.1.0.Beta6-sources.jar --slot 0 --keywords "~amd64" --ebuild netty-codec-http2-4.1.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Netty is an asynchronous event-driven network application framework for
    rapid development of maintainable high performance protocol servers and
    clients."
HOMEPAGE="http://netty.io/netty-codec-http2/"
SRC_URI="http://central.maven.org/maven2/io/netty/netty-codec-http2/4.1.0.Beta6/netty-codec-http2-4.1.0.Beta6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="io.netty:netty-codec-http2:4.1.0.Beta6"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-codec-http2-4.1.0.Beta6.pom
# com.jcraft:jzlib:1.1.3 -> >=dev-java/jzlib-1.1.1:1.1
# com.twitter:hpack:0.11.0 -> >=app-maven/hpack-0.10.1:0
# io.netty:netty-codec-http:4.1.0.Beta6 -> >=dev-java/netty-transport-4.0.36:0
# io.netty:netty-handler:4.1.0.Beta6 -> >=dev-java/netty-transport-4.0.36:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/netty-codec-http2-4.1.0.Beta6.pom
CDEPEND="
	>=app-maven/hpack-0.10.1:0
	>=dev-java/jzlib-1.1.1:1.1
	>=dev-java/netty-transport-4.0.36:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jzlib-1.1,hpack,netty-transport,netty-transport"
