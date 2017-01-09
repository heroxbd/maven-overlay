# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/quasiquotes_2.10-2.0.0-M8.pom --download-uri http://central.maven.org/maven2/org/scalamacros/quasiquotes_2.10/2.0.0-M8/quasiquotes_2.10-2.0.0-M8-sources.jar --slot 2.10 --keywords "~amd64" --ebuild quasiquotes-2.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Empowers production Scala compiler with latest macro developments"
HOMEPAGE="https://github.com/scalamacros/paradise"
SRC_URI="http://central.maven.org/maven2/org/scalamacros/quasiquotes_2.10/2.0.0-M8/quasiquotes_2.10-2.0.0-M8-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scalamacros:quasiquotes_2.10:2.0.0-M8"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/quasiquotes_2.10-2.0.0-M8.pom
# org.scala-lang:scala-library:2.10.3 -> >=app-maven/scala-library-2.11.8:0
# org.scala-lang:scala-reflect:2.10.3 -> >=app-maven/scala-reflect-2.11.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/quasiquotes_2.10-2.0.0-M8.pom
CDEPEND="
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/scala-reflect-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library,scala-reflect"
