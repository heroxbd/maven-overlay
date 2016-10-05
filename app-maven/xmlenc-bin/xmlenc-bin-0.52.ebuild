# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/xmlenc-0.52.pom --download-uri http://central.maven.org/maven2/xmlenc/xmlenc/0.52/xmlenc-0.52.jar --slot 0 --keywords "~amd64" --ebuild xmlenc-bin-0.52.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="xmlenc Library"
HOMEPAGE="http://xmlenc.sourceforge.net"
SRC_URI="http://central.maven.org/maven2/xmlenc/xmlenc/0.52/xmlenc-0.52.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="xmlenc:xmlenc:0.52"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

