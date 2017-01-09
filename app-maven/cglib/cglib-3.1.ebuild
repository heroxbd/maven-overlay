# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cglib-3.1.pom --download-uri http://central.maven.org/maven2/cglib/cglib/3.1/cglib-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild cglib-3.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Code generation library"
HOMEPAGE="http://cglib.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/cglib/cglib/3.1/cglib-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="cglib:cglib:3.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cglib-3.1.pom
# ant:ant:1.6.2 -> >=dev-java/ant-core-1.9.2:0
# org.ow2.asm:asm:4.2 -> >=dev-java/asm-3.3.1:3
# org.ow2.asm:asm-util:4.2 -> >=app-maven/asm-util-4.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cglib-3.1.pom
CDEPEND="
	>=app-maven/asm-util-4.1:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/asm-3.3.1:3"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="ant-core,asm-3,asm-util"
