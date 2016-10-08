# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalap-2.11.0.pom --download-uri http://central.maven.org/maven2/org/scala-lang/scalap/2.11.0/scalap-2.11.0-sources.jar --slot 0 --keywords "~amd64" --ebuild scalap-2.11.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="bytecode analysis tool"
HOMEPAGE="http://www.scala-lang.org/"
SRC_URI="http://central.maven.org/maven2/org/scala-lang/scalap/2.11.0/scalap-2.11.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scala-lang:scalap:2.11.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalap-2.11.0.pom
# org.scala-lang:scala-compiler:2.11.0 -> >=app-maven/scala-compiler-2.11.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalap-2.11.0.pom
CDEPEND="
	>=app-maven/scala-compiler-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-compiler"
