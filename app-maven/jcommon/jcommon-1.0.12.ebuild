# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jcommon-1.0.12.pom --download-uri http://central.maven.org/maven2/jfree/jcommon/1.0.12/jcommon-1.0.12-sources.jar --slot 0 --keywords "~amd64" --ebuild jcommon-1.0.12.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JCommon is a free general purpose Java class library that is used in several projects at www.jfree.org,
        including JFreeChart and JFreeReport."
HOMEPAGE="http://www.jfree.org/jcommon/"
SRC_URI="http://central.maven.org/maven2/jfree/jcommon/1.0.12/jcommon-1.0.12-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="jfree:jcommon:1.0.12"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

