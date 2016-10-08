# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cglib-nodep-2.2.2.pom --download-uri http://central.maven.org/maven2/cglib/cglib-nodep/2.2.2/cglib-nodep-2.2.2-sources.jar --slot 0 --keywords "~amd64" --ebuild cglib-nodep-2.2.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Code generation library with shaded ASM dependecies"
HOMEPAGE="http://cglib.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/cglib/cglib-nodep/2.2.2/cglib-nodep-2.2.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="cglib:cglib-nodep:2.2.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cglib-nodep-2.2.2.pom
# ant:ant:1.6.2 -> >=dev-java/ant-core-1.9.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cglib-nodep-2.2.2.pom
CDEPEND="
	>=dev-java/ant-core-1.9.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="ant-core"
