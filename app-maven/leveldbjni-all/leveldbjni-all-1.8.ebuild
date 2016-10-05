# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/leveldbjni-all-1.8.pom --download-uri http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni-all/1.8/leveldbjni-all-1.8-sources.jar --slot 0 --keywords "~amd64" --ebuild leveldbjni-all-1.8.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="An uber jar which contains all the leveldbjni platform libraries and dependencies"
HOMEPAGE="http://leveldbjni.fusesource.org/leveldbjni-all"
SRC_URI="http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni-all/1.8/leveldbjni-all-1.8-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.fusesource.leveldbjni:leveldbjni-all:1.8"
# Compile dependencies
# POM: ../poms/leveldbjni-all-1.8.pom
# org.fusesource.leveldbjni:leveldbjni:1.8 -> >=app-maven/leveldbjni-1.8:0
# org.fusesource.leveldbjni:leveldbjni-linux32:1.8 -> >=app-maven/leveldbjni-linux32-bin-1.8:0
# org.fusesource.leveldbjni:leveldbjni-linux64:1.8 -> >=app-maven/leveldbjni-linux64-bin-1.8:0
# org.fusesource.leveldbjni:leveldbjni-osx:1.8 -> >=app-maven/leveldbjni-osx-bin-1.8:0
# org.fusesource.leveldbjni:leveldbjni-win32:1.8 -> >=app-maven/leveldbjni-win32-bin-1.8:0
# org.fusesource.leveldbjni:leveldbjni-win64:1.8 -> >=app-maven/leveldbjni-win64-bin-1.8:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/leveldbjni-1.8:0
	>=app-maven/leveldbjni-linux32-bin-1.8:0
	>=app-maven/leveldbjni-linux64-bin-1.8:0
	>=app-maven/leveldbjni-osx-bin-1.8:0
	>=app-maven/leveldbjni-win32-bin-1.8:0
	>=app-maven/leveldbjni-win64-bin-1.8:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="leveldbjni,leveldbjni-linux32-bin,leveldbjni-linux64-bin,leveldbjni-osx-bin,leveldbjni-win32-bin,leveldbjni-win64-bin"
