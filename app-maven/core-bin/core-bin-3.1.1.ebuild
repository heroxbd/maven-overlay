# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/core-3.1.1.pom --download-uri http://central.maven.org/maven2/org/eclipse/jdt/core/3.1.1/core-3.1.1.jar --slot 0 --keywords "~amd64" --ebuild core-bin-3.1.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION=""
HOMEPAGE="http://www.eclipse.org/jdt/"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jdt/core/3.1.1/core-3.1.1.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jdt:core:3.1.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

