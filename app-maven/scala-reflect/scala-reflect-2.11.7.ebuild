# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/scala-reflect-2.11.7.pom --download-uri http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.11.7/scala-reflect-2.11.7-sources.jar --slot 0 --keywords "~amd64" --ebuild scala-reflect-2.11.7.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Compiler for the Scala Programming Language"
HOMEPAGE="http://www.scala-lang.org/"
SRC_URI="http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.11.7/scala-reflect-2.11.7-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.scala-lang:scala-reflect:2.11.7"

# Common dependencies
# POM: ../poms/scala-reflect-2.11.7.pom
# org.scala-lang:scala-library:2.11.7 -> >=app-maven/scala-library-2.11.7:0
# POM: ../poms/scala-reflect-2.11.7.pom
CDEPEND="
	>=app-maven/scala-library-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library"