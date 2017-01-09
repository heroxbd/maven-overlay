# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/asm-util-4.1.pom --download-uri http://central.maven.org/maven2/org/ow2/asm/asm-util/4.1/asm-util-4.1-sources.jar --slot 0 --keywords "~amd64" --ebuild asm-util-4.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A very small and fast Java bytecode manipulation framework"
HOMEPAGE="http://asm.objectweb.org/asm-util/"
SRC_URI="http://central.maven.org/maven2/org/ow2/asm/asm-util/4.1/asm-util-4.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.ow2.asm:asm-util:4.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/asm-util-4.1.pom
# org.ow2.asm:asm-tree:4.1 -> >=app-maven/asm-tree-4.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/asm-util-4.1.pom
CDEPEND="
	>=app-maven/asm-tree-4.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="asm-tree"
