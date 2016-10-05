# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/netty-transport-native-epoll-4.0.29.Final.pom --download-uri http://central.maven.org/maven2/io/netty/netty-transport-native-epoll/4.0.29.Final/netty-transport-native-epoll-4.0.29.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild netty-transport-native-epoll-4.0.29.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Netty is an asynchronous event-driven network application framework for
    rapid development of maintainable high performance protocol servers and
    clients."
HOMEPAGE="http://netty.io/netty-transport-native-epoll/"
SRC_URI="http://central.maven.org/maven2/io/netty/netty-transport-native-epoll/4.0.29.Final/netty-transport-native-epoll-4.0.29.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="io.netty:netty-transport-native-epoll:4.0.29.Final"

# Common dependencies
# POM: ../poms/netty-transport-native-epoll-4.0.29.Final.pom
# io.netty:netty-buffer:4.0.29.Final -> >=dev-java/netty-buffer-4.0.21:0
# io.netty:netty-common:4.0.29.Final -> >=dev-java/netty-buffer-4.0.21:0
# io.netty:netty-transport:4.0.29.Final -> >=dev-java/netty-buffer-4.0.21:0
# POM: ../poms/netty-transport-native-epoll-4.0.29.Final.pom
CDEPEND="
	>=dev-java/netty-buffer-4.0.21:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="netty-buffer,netty-buffer,netty-buffer"
