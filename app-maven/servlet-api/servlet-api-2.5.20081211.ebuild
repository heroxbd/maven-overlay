# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/servlet-api-2.5-20081211.pom --download-uri http://central.maven.org/maven2/org/mortbay/jetty/servlet-api/2.5-20081211/servlet-api-2.5-20081211-sources.jar --slot 0 --keywords "~amd64" --ebuild servlet-api-2.5.20081211.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Servlet Specification API"
HOMEPAGE="http://jetty.mortbay.org/servlet-api"
SRC_URI="http://central.maven.org/maven2/org/mortbay/jetty/servlet-api/2.5-20081211/servlet-api-2.5-20081211-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.mortbay.jetty:servlet-api:2.5-20081211"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

