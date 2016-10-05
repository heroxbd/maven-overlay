# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/scala-parser-combinators_2.11-1.0.4.pom --download-uri http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4-sources.jar --slot 2.11 --keywords "~amd64" --ebuild scala-parser-combinators-1.0.4.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="scala-parser-combinators"
HOMEPAGE="http://www.scala-lang.org/"
SRC_URI="http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.scala-lang.modules:scala-parser-combinators_2.11:1.0.4"

# Common dependencies
# POM: ../poms/scala-parser-combinators_2.11-1.0.4.pom
# org.scala-lang:scala-library:2.11.6 -> >=app-maven/scala-library-2.11.7:0
# POM: ../poms/scala-parser-combinators_2.11-1.0.4.pom
CDEPEND="
	>=app-maven/scala-library-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library"
