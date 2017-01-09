# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldbjni-win32-1.8.pom --download-uri http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni-win32/1.8/leveldbjni-win32-1.8.jar --slot 0 --keywords "~amd64" --ebuild leveldbjni-win32-bin-1.8.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="The leveldbjni Windows 32 bit native libraries"
HOMEPAGE="http://leveldbjni.fusesource.org/leveldbjni-win32"
SRC_URI="http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni-win32/1.8/leveldbjni-win32-1.8.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.fusesource.leveldbjni:leveldbjni-win32:1.8"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldbjni-win32-1.8.pom
# org.fusesource.leveldbjni:leveldbjni:1.8 -> >=app-maven/leveldbjni-1.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldbjni-win32-1.8.pom
CDEPEND="
	>=app-maven/leveldbjni-1.8:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="leveldbjni"
