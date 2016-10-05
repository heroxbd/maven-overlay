# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/leveldbjni-osx-1.8.pom --download-uri http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni-osx/1.8/leveldbjni-osx-1.8.jar --slot 0 --keywords "~amd64" --ebuild leveldbjni-osx-bin-1.8.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="The leveldbjni OS X universal native libraries"
HOMEPAGE="http://leveldbjni.fusesource.org/leveldbjni-osx"
SRC_URI="http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni-osx/1.8/leveldbjni-osx-1.8.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.fusesource.leveldbjni:leveldbjni-osx:1.8"

# Common dependencies
# POM: ../poms/leveldbjni-osx-1.8.pom
# org.fusesource.leveldbjni:leveldbjni:1.8 -> >=app-maven/leveldbjni-1.8:0
# POM: ../poms/leveldbjni-osx-1.8.pom
CDEPEND="
	>=app-maven/leveldbjni-1.8:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="leveldbjni"