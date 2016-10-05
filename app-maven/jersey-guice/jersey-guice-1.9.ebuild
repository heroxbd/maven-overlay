# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jersey-guice-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/contribs/jersey-guice/1.9/jersey-guice-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-guice-1.9.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Projects that provide additional functionality to jersey, like integration
        with other projects/frameworks."
HOMEPAGE="https://jersey.java.net/jersey-contribs/jersey-guice/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/contribs/jersey-guice/1.9/jersey-guice-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.sun.jersey.contribs:jersey-guice:1.9"

# Common dependencies
# POM: ../poms/jersey-guice-1.9.pom
# com.google.inject:guice:3.0 -> >=dev-java/guice-4.0:4
# com.google.inject.extensions:guice-servlet:3.0 -> >=dev-java/guice-4.0:4
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# javax.inject:javax.inject:1 -> >=dev-java/javax-inject-1:0
# POM: ../poms/jersey-guice-1.9.pom
CDEPEND="
	>=app-maven/jersey-server-1.9:0
	>=dev-java/guice-4.0:4
	>=dev-java/javax-inject-1:0"
# Compile dependencies
# POM: ../poms/jersey-guice-1.9.pom
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/servlet-api-2.5:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guice-4,guice-4,jersey-server,javax-inject"
JAVA_CLASSPATH_EXTRA="servlet-api"
