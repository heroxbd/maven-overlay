# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/gmbal-api-only-3.0.0-b023.pom --download-uri http://central.maven.org/maven2/org/glassfish/gmbal/gmbal-api-only/3.0.0-b023/gmbal-api-only-3.0.0-b023.jar --slot 0 --keywords "~amd64" --ebuild gmbal-api-only-bin-3.0.0_beta023.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="gmbal API"
HOMEPAGE="http://kenai.com/hg/gmbal~master"
SRC_URI="http://central.maven.org/maven2/org/glassfish/gmbal/gmbal-api-only/3.0.0-b023/gmbal-api-only-3.0.0-b023.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.glassfish.gmbal:gmbal-api-only:3.0.0-b023"

# Common dependencies
# POM: ../poms/gmbal-api-only-3.0.0-b023.pom
# org.glassfish.external:management-api:3.0.0-b012 -> >=app-maven/management-api-bin-3.0.0:0
# POM: ../poms/gmbal-api-only-3.0.0-b023.pom
CDEPEND="
	>=app-maven/management-api-bin-3.0.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="management-api-bin"
