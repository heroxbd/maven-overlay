# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/parboiled-core-1.1.6.pom --download-uri http://central.maven.org/maven2/org/parboiled/parboiled-core/1.1.6/parboiled-core-1.1.6-sources.jar --slot 0 --keywords "~amd64" --ebuild parboiled-core-1.1.6.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Elegant parsing in Java and Scala - lightweight, easy-to-use, powerful"
HOMEPAGE="http://parboiled.org"
SRC_URI="http://central.maven.org/maven2/org/parboiled/parboiled-core/1.1.6/parboiled-core-1.1.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.parboiled:parboiled-core:1.1.6"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
