# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/osgi_R4_core-1.0.pom --download-uri http://central.maven.org/maven2/org/osgi/osgi_R4_core/1.0/osgi_R4_core-1.0.jar --slot R4_core --keywords "~amd64" --ebuild osgi-bin-1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="OSGi R4 core"
HOMEPAGE="http://www.osgi.org"
SRC_URI="http://central.maven.org/maven2/org/osgi/osgi_R4_core/1.0/osgi_R4_core-1.0.jar"
LICENSE=""
SLOT="R4_core"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.osgi:osgi_R4_core:1.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

