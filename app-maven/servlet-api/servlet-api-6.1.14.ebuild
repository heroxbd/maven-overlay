# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/servlet-api-2.5-6.1.14.pom --download-uri http://central.maven.org/maven2/org/mortbay/jetty/servlet-api-2.5/6.1.14/servlet-api-2.5-6.1.14-sources.jar --slot 2.5 --keywords "~amd64" --ebuild servlet-api-6.1.14.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Servlet Specification 2.5 API"
HOMEPAGE="http://jetty.mortbay.org/project/servlet-api-2.5"
SRC_URI="http://central.maven.org/maven2/org/mortbay/jetty/servlet-api-2.5/6.1.14/servlet-api-2.5-6.1.14-sources.jar"
LICENSE=""
SLOT="2.5"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.mortbay.jetty:servlet-api-2.5:6.1.14"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
