# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/npn-api-1.1.1.v20141010.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/npn/npn-api/1.1.1.v20141010/npn-api-1.1.1.v20141010-sources.jar --slot 0 --keywords "~amd64" --ebuild npn-api-1.1.1_p20141010.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Administrative parent pom for Jetty modules"
HOMEPAGE="http://www.eclipse.org/jetty/npn-api"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/npn/npn-api/1.1.1.v20141010/npn-api-1.1.1.v20141010-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty.npn:npn-api:1.1.1.v20141010"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

