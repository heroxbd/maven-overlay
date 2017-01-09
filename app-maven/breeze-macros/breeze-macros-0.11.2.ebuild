# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/breeze-macros_2.10-0.11.2.pom --download-uri http://central.maven.org/maven2/org/scalanlp/breeze-macros_2.10/0.11.2/breeze-macros_2.10-0.11.2-sources.jar --slot 2.10 --keywords "~amd64" --ebuild breeze-macros-0.11.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="breeze-macros"
HOMEPAGE="http://scalanlp.org/"
SRC_URI="http://central.maven.org/maven2/org/scalanlp/breeze-macros_2.10/0.11.2/breeze-macros_2.10-0.11.2-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scalanlp:breeze-macros_2.10:0.11.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/breeze-macros_2.10-0.11.2.pom
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# org.scala-lang:scala-reflect:2.10.4 -> >=app-maven/scala-reflect-2.11.7:0
# org.scalamacros:quasiquotes_2.10:2.0.0-M8 -> >=app-maven/quasiquotes-2.0.0:2.10
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/breeze-macros_2.10-0.11.2.pom
CDEPEND="
	>=app-maven/quasiquotes-2.0.0:2.10
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/scala-reflect-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library,scala-reflect,quasiquotes-2.10"
