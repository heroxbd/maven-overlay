# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-websocket-8.1.9.v20130131.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/jetty-websocket/8.1.9.v20130131/jetty-websocket-8.1.9.v20130131-sources.jar --slot 0 --keywords "~amd64" --ebuild jetty-websocket-8.1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Administrative parent pom for Jetty modules"
HOMEPAGE="http://www.eclipse.org/jetty/jetty-websocket"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/jetty-websocket/8.1.9.v20130131/jetty-websocket-8.1.9.v20130131-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty:jetty-websocket:8.1.9.v20130131"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-websocket-8.1.9.v20130131.pom
# org.eclipse.jetty:jetty-http:8.1.9.v20130131 -> >=app-maven/jetty-http-8.1.9:0
# org.eclipse.jetty:jetty-io:8.1.9.v20130131 -> >=app-maven/jetty-io-8.1.9:0
# org.eclipse.jetty:jetty-util:8.1.9.v20130131 -> >=app-maven/jetty-util-8.1.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-websocket-8.1.9.v20130131.pom
CDEPEND="
	>=app-maven/jetty-http-8.1.9:0
	>=app-maven/jetty-io-8.1.9:0
	>=app-maven/jetty-util-8.1.9:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jetty-websocket-8.1.9.v20130131.pom
# org.eclipse.jetty:jetty-server:8.1.9.v20130131 -> >=app-maven/jetty-server-8.1.9:0
# org.eclipse.jetty.orbit:javax.servlet:3.0.0.v201112011016 -> >=app-maven/javax-servlet-3.0.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/javax-servlet-3.0.0:0
	>=app-maven/jetty-server-8.1.9:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jetty-http,jetty-io,jetty-util"
JAVA_CLASSPATH_EXTRA="jetty-server,javax-servlet"
