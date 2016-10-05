# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/oro-2.0.8.pom --download-uri http://central.maven.org/maven2/oro/oro/2.0.8/oro-2.0.8-sources.jar --slot 0 --keywords "~amd64" --ebuild oro-2.0.8.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/oro/oro/2.0.8/oro-2.0.8-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="oro:oro:2.0.8"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

