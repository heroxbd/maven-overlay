# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/asm-3.1.pom --download-uri http://central.maven.org/maven2/asm/asm/3.1/asm-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild asm-3.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A very small and fast Java bytecode manipulation framework"
HOMEPAGE="http://asm.objectweb.org/asm/"
SRC_URI="http://central.maven.org/maven2/asm/asm/3.1/asm-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="asm:asm:3.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
