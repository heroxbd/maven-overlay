# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jsp-api-2.1-6.1.14.pom --download-uri http://central.maven.org/maven2/org/mortbay/jetty/jsp-api-2.1/6.1.14/jsp-api-2.1-6.1.14-sources.jar --slot 2.1 --keywords "~amd64" --ebuild jsp-api-6.1.14.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JSP2.1 API"
HOMEPAGE="http://jetty.mortbay.org/project/jsp-api-2.1"
SRC_URI="http://central.maven.org/maven2/org/mortbay/jetty/jsp-api-2.1/6.1.14/jsp-api-2.1-6.1.14-sources.jar"
LICENSE=""
SLOT="2.1"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.mortbay.jetty:jsp-api-2.1:6.1.14"

# Common dependencies
# POM: ../poms/jsp-api-2.1-6.1.14.pom
# org.mortbay.jetty:servlet-api-2.5:6.1.14 -> >=app-maven/servlet-api-6.1.14:2.5
# POM: ../poms/jsp-api-2.1-6.1.14.pom
CDEPEND="
	>=app-maven/servlet-api-6.1.14:2.5"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="servlet-api-2.5"
