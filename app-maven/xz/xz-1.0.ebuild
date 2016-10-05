# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/xz-1.0.pom --download-uri http://central.maven.org/maven2/org/tukaani/xz/1.0/xz-1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild xz-1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="XZ data compression"
HOMEPAGE="http://tukaani.org/xz/java.html"
SRC_URI="http://central.maven.org/maven2/org/tukaani/xz/1.0/xz-1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.tukaani:xz:1.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
