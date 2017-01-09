# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/janino-2.7.8.pom --download-uri http://central.maven.org/maven2/org/codehaus/janino/janino/2.7.8/janino-2.7.8-sources.jar --slot 0 --keywords "~amd64" --ebuild janino-2.7.8.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Janino is a compiler that reads a JavaTM expression, block, class body, source file or a set of source files, and
    generates JavaTM bytecode that is loaded and executed directly. Janino is not intended to be a development tool,
    but an embedded compiler for run-time compilation purposes, e.g. expression evaluators or \"server pages\" engines
    like JSP."
HOMEPAGE="http://docs.codehaus.org/display/JANINO/Home/janino"
SRC_URI="http://central.maven.org/maven2/org/codehaus/janino/janino/2.7.8/janino-2.7.8-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.codehaus.janino:janino:2.7.8"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/janino-2.7.8.pom
# org.apache.ant:ant-nodeps:1.7.1 -> >=dev-java/ant-nodeps-1.9.2:0
# org.codehaus.janino:commons-compiler:2.7.8 -> >=app-maven/commons-compiler-2.7.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/janino-2.7.8.pom
CDEPEND="
	>=app-maven/commons-compiler-2.7.8:0
	>=dev-java/ant-nodeps-1.9.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="ant-nodeps,commons-compiler"
