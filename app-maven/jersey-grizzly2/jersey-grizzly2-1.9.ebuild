# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-grizzly2-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-grizzly2/1.9/jersey-grizzly2-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-grizzly2-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Grizzly 2.0 container for Jersey"
HOMEPAGE="https://jersey.java.net/jersey-grizzly2/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-grizzly2/1.9/jersey-grizzly2-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey:jersey-grizzly2:1.9"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-grizzly2-1.9.pom
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# org.glassfish:javax.servlet:3.1 -> >=app-maven/javax-servlet-3.1:0
# org.glassfish.grizzly:grizzly-http:2.1.2 -> >=app-maven/grizzly-http-2.1.2:0
# org.glassfish.grizzly:grizzly-http-server:2.1.2 -> >=app-maven/grizzly-http-server-2.1.2:0
# org.glassfish.grizzly:grizzly-http-servlet:2.1.2 -> >=app-maven/grizzly-http-servlet-2.1.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-grizzly2-1.9.pom
CDEPEND="
	>=app-maven/grizzly-http-2.1.2:0
	>=app-maven/grizzly-http-server-2.1.2:0
	>=app-maven/grizzly-http-servlet-2.1.2:0
	>=app-maven/javax-servlet-3.1:0
	>=app-maven/jersey-server-1.9:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jersey-server,javax-servlet,grizzly-http,grizzly-http-server,grizzly-http-servlet"
