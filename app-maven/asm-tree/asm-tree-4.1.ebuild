# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/asm-tree-4.1.pom --download-uri http://central.maven.org/maven2/org/ow2/asm/asm-tree/4.1/asm-tree-4.1-sources.jar --slot 0 --keywords "~amd64" --ebuild asm-tree-4.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A very small and fast Java bytecode manipulation framework"
HOMEPAGE="http://asm.objectweb.org/asm-tree/"
SRC_URI="http://central.maven.org/maven2/org/ow2/asm/asm-tree/4.1/asm-tree-4.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.ow2.asm:asm-tree:4.1"

# Common dependencies
# POM: ../poms/asm-tree-4.1.pom
# org.ow2.asm:asm:4.1 -> >=dev-java/asm-5.0.3:4
# POM: ../poms/asm-tree-4.1.pom
CDEPEND="
	>=dev-java/asm-5.0.3:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="asm-4"
