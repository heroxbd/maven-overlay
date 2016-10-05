# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/weld-api-1.1.Final.pom --download-uri http://central.maven.org/maven2/org/jboss/weld/weld-api/1.1.Final/weld-api-1.1.Final-sources.jar --slot 0 --keywords "~amd64" --ebuild weld-api-1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Weld specifc extensions to the CDI API"
HOMEPAGE="http://www.seamframework.org/Weld"
SRC_URI="http://central.maven.org/maven2/org/jboss/weld/weld-api/1.1.Final/weld-api-1.1.Final-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.jboss.weld:weld-api:1.1.Final"

# Common dependencies
# POM: ../poms/weld-api-1.1.Final.pom
# javax.enterprise:cdi-api:1.0-SP3 -> >=app-maven/cdi-api-1.0:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# POM: ../poms/weld-api-1.1.Final.pom
CDEPEND="
	>=app-maven/cdi-api-1.0:0
	>=app-maven/servlet-api-2.5:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="cdi-api,servlet-api"
