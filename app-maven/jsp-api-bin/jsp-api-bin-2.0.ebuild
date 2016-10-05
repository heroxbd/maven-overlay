# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jsp-api-2.0.pom --download-uri http://central.maven.org/maven2/javax/servlet/jsp-api/2.0/jsp-api-2.0.jar --slot 0 --keywords "~amd64" --ebuild jsp-api-bin-2.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/javax/servlet/jsp-api/2.0/jsp-api-2.0.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.servlet:jsp-api:2.0"

# Common dependencies
# POM: ../poms/jsp-api-2.0.pom
# javax.servlet:servlet-api:2.4 -> >=app-maven/servlet-api-2.5:0
# POM: ../poms/jsp-api-2.0.pom
CDEPEND="
	>=app-maven/servlet-api-2.5:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="servlet-api"
