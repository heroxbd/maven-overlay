# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/scalacheck_2.11-1.12.5.pom --download-uri http://central.maven.org/maven2/org/scalacheck/scalacheck_2.11/1.12.5/scalacheck_2.11-1.12.5-sources.jar --slot 2.11 --keywords "~amd64" --ebuild scalacheck-1.12.5.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="scalacheck"
HOMEPAGE="http://www.scalacheck.org"
SRC_URI="http://central.maven.org/maven2/org/scalacheck/scalacheck_2.11/1.12.5/scalacheck_2.11-1.12.5-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.scalacheck:scalacheck_2.11:1.12.5"

# Common dependencies
# POM: ../poms/scalacheck_2.11-1.12.5.pom
# org.scala-lang:scala-library:2.11.7 -> >=app-maven/scala-library-2.11.7:0
# org.scala-sbt:test-interface:1.0 -> >=app-maven/test-interface-1.0:0
# POM: ../poms/scalacheck_2.11-1.12.5.pom
CDEPEND="
	>=app-maven/scala-library-2.11.7:0
	>=app-maven/test-interface-1.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library,test-interface"
