# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jaxb-impl-2.2.3-1.pom --download-uri http://central.maven.org/maven2/com/sun/xml/bind/jaxb-impl/2.2.3-1/jaxb-impl-2.2.3-1-sources.jar --slot 0 --keywords "~amd64" --ebuild jaxb-impl-2.2.3.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JAXB (JSR 222) reference implementation"
HOMEPAGE="http://jaxb.java.net/"
SRC_URI="http://central.maven.org/maven2/com/sun/xml/bind/jaxb-impl/2.2.3-1/jaxb-impl-2.2.3-1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.sun.xml.bind:jaxb-impl:2.2.3-1"

# Common dependencies
# POM: ../poms/jaxb-impl-2.2.3-1.pom
# javax.xml.bind:jaxb-api:2.2.2 -> >=app-maven/jaxb-api-2.1:0
# POM: ../poms/jaxb-impl-2.2.3-1.pom
CDEPEND="
	>=app-maven/jaxb-api-2.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jaxb-api"
