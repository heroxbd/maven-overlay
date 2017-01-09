# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/opencsv-3.4.pom --download-uri http://central.maven.org/maven2/com/opencsv/opencsv/3.4/opencsv-3.4-sources.jar --slot 0 --keywords "~amd64" --ebuild opencsv-3.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A simple library for reading and writing CSV in Java"
HOMEPAGE="http://opencsv.sf.net"
SRC_URI="http://central.maven.org/maven2/com/opencsv/opencsv/3.4/opencsv-3.4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.opencsv:opencsv:3.4"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/opencsv-3.4.pom
# org.apache.commons:commons-lang3:3.3.2 -> >=app-maven/commons-lang3-3.3.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/opencsv-3.4.pom
CDEPEND="
	>=app-maven/commons-lang3-3.3.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-lang3"
