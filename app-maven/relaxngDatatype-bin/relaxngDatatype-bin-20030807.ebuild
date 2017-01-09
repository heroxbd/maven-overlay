# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/relaxngDatatype-20030807.pom --download-uri http://central.maven.org/maven2/msv/relaxngDatatype/20030807/relaxngDatatype-20030807.jar --slot 0 --keywords "~amd64" --ebuild relaxngDatatype-bin-20030807.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/msv/relaxngDatatype/20030807/relaxngDatatype-20030807.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="msv:relaxngDatatype:20030807"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

