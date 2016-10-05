# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/sac-1.3.pom --download-uri http://central.maven.org/maven2/org/w3c/css/sac/1.3/sac-1.3-sources.jar --slot 0 --keywords "~amd64" --ebuild sac-1.3.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="SAC is a standard interface for CSS parsers."
HOMEPAGE="http://www.w3.org/Style/CSS/SAC/"
SRC_URI="http://central.maven.org/maven2/org/w3c/css/sac/1.3/sac-1.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.w3c.css:sac:1.3"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
