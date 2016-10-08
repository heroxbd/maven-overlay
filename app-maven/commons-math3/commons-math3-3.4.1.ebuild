# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-math3-3.4.1.pom --download-uri http://central.maven.org/maven2/org/apache/commons/commons-math3/3.4.1/commons-math3-3.4.1-sources.jar --slot 0 --keywords "~amd64" --ebuild commons-math3-3.4.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Commons Math project is a library of lightweight, self-contained mathematics and statistics components addressing the most common practical problems not immediately available in the Java programming language or commons-lang."
HOMEPAGE="http://commons.apache.org/proper/commons-math/"
SRC_URI="http://central.maven.org/maven2/org/apache/commons/commons-math3/3.4.1/commons-math3-3.4.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.commons:commons-math3:3.4.1"

DEPEND="
	>=virtual/jdk-1.5
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.5"

S="${WORKDIR}"

