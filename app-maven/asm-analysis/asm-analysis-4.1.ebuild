# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/asm-analysis-4.1.pom --download-uri http://central.maven.org/maven2/org/ow2/asm/asm-analysis/4.1/asm-analysis-4.1-sources.jar --slot 0 --keywords "~amd64" --ebuild asm-analysis-4.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A very small and fast Java bytecode manipulation framework"
HOMEPAGE="http://asm.objectweb.org/asm-analysis/"
SRC_URI="http://central.maven.org/maven2/org/ow2/asm/asm-analysis/4.1/asm-analysis-4.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.ow2.asm:asm-analysis:4.1"

# Common dependencies
# POM: ../poms/asm-analysis-4.1.pom
# org.ow2.asm:asm-tree:4.1 -> >=app-maven/asm-tree-4.1:0
# POM: ../poms/asm-analysis-4.1.pom
CDEPEND="
	>=app-maven/asm-tree-4.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="asm-tree"
