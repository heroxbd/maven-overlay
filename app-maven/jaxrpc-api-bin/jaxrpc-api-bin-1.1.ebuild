# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jaxrpc-api-1.1.pom --download-uri http://central.maven.org/maven2/javax/xml/jaxrpc-api/1.1/jaxrpc-api-1.1.jar --slot 0 --keywords "~amd64" --ebuild jaxrpc-api-bin-1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Part of the Java Web Services Developer Pack 1.6"
HOMEPAGE="http://java.sun.com/webservices/jaxrpc/index.jsp"
SRC_URI="http://central.maven.org/maven2/javax/xml/jaxrpc-api/1.1/jaxrpc-api-1.1.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.xml:jaxrpc-api:1.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

