# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/xbean-asm5-shaded-4.4.pom --download-uri http://central.maven.org/maven2/org/apache/xbean/xbean-asm5-shaded/4.4/xbean-asm5-shaded-4.4-sources.jar --slot 0 --keywords "~amd64" --ebuild xbean-asm5-shaded-4.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Repackaged and shaded asm 5.x jars"
HOMEPAGE="http://geronimo.apache.org/maven/xbean/4.4/xbean-asm5-shaded"
SRC_URI="http://central.maven.org/maven2/org/apache/xbean/xbean-asm5-shaded/4.4/xbean-asm5-shaded-4.4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.xbean:xbean-asm5-shaded:4.4"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

