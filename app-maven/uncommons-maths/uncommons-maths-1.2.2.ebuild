# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/uncommons-maths-1.2.2a.pom --download-uri http://central.maven.org/maven2/org/uncommons/maths/uncommons-maths/1.2.2a/uncommons-maths-1.2.2a-sources.jar --slot 0 --keywords "~amd64" --ebuild uncommons-maths-1.2.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Random number generators, probability distributions, combinatorics and statistics for Java."
HOMEPAGE="http://maths.uncommons.org/"
SRC_URI="http://central.maven.org/maven2/org/uncommons/maths/uncommons-maths/1.2.2a/uncommons-maths-1.2.2a-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.uncommons.maths:uncommons-maths:1.2.2a"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/uncommons-maths-1.2.2a.pom
# jfree:jcommon:1.0.12 -> >=app-maven/jcommon-1.0.12:0
# jfree:jfreechart:1.0.8a -> >=app-maven/jfreechart-1.0.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/uncommons-maths-1.2.2a.pom
CDEPEND="
	>=app-maven/jcommon-1.0.12:0
	>=app-maven/jfreechart-1.0.8:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jcommon,jfreechart"
