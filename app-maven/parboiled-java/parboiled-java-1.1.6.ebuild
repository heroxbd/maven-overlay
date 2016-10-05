# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/parboiled-java-1.1.6.pom --download-uri http://central.maven.org/maven2/org/parboiled/parboiled-java/1.1.6/parboiled-java-1.1.6-sources.jar --slot 0 --keywords "~amd64" --ebuild parboiled-java-1.1.6.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Elegant parsing in Java and Scala - lightweight, easy-to-use, powerful"
HOMEPAGE="http://parboiled.org"
SRC_URI="http://central.maven.org/maven2/org/parboiled/parboiled-java/1.1.6/parboiled-java-1.1.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.parboiled:parboiled-java:1.1.6"

# Common dependencies
# POM: ../poms/parboiled-java-1.1.6.pom
# org.ow2.asm:asm:4.1 -> >=dev-java/asm-3.3.1:3
# org.ow2.asm:asm-analysis:4.1 -> >=app-maven/asm-analysis-4.1:0
# org.ow2.asm:asm-tree:4.1 -> >=app-maven/asm-tree-4.1:0
# org.ow2.asm:asm-util:4.1 -> >=app-maven/asm-util-4.1:0
# org.parboiled:parboiled-core:1.1.6 -> >=app-maven/parboiled-core-1.1.6:0
# POM: ../poms/parboiled-java-1.1.6.pom
CDEPEND="
	>=app-maven/asm-analysis-4.1:0
	>=app-maven/asm-tree-4.1:0
	>=app-maven/asm-util-4.1:0
	>=app-maven/parboiled-core-1.1.6:0
	>=dev-java/asm-3.3.1:3"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="asm-3,asm-analysis,asm-tree,asm-util,parboiled-core"
