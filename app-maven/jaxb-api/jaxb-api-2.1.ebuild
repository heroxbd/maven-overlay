# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jaxb-api-2.1.pom --download-uri http://central.maven.org/maven2/javax/xml/bind/jaxb-api/2.1/jaxb-api-2.1-sources.jar --slot 0 --keywords "~amd64" --ebuild jaxb-api-2.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/javax/xml/bind/jaxb-api/2.1/jaxb-api-2.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.xml.bind:jaxb-api:2.1"

# Common dependencies
# POM: ../poms/jaxb-api-2.1.pom
# javax.activation:activation:1.1 -> >=app-maven/activation-1.1.1:0
# javax.xml.stream:stax-api:1.0-2 -> >=app-maven/stax-api-1.0.2:0
# POM: ../poms/jaxb-api-2.1.pom
CDEPEND="
	>=app-maven/activation-1.1.1:0
	>=app-maven/stax-api-1.0.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="activation,stax-api"
