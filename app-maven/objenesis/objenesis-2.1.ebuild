# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/objenesis-2.1.pom --download-uri http://central.maven.org/maven2/org/objenesis/objenesis/2.1/objenesis-2.1-sources.jar --slot 0 --keywords "~amd64" --ebuild objenesis-2.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A library for instantiating Java objects"
HOMEPAGE="http://objenesis.org"
SRC_URI="http://central.maven.org/maven2/org/objenesis/objenesis/2.1/objenesis-2.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.objenesis:objenesis:2.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
