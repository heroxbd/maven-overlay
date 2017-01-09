# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spire_2.10-0.7.4.pom --download-uri http://central.maven.org/maven2/org/spire-math/spire_2.10/0.7.4/spire_2.10-0.7.4-sources.jar --slot 2.10 --keywords "~amd64" --ebuild spire-0.7.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="spire"
HOMEPAGE="http://spire-math.org"
SRC_URI="http://central.maven.org/maven2/org/spire-math/spire_2.10/0.7.4/spire_2.10-0.7.4-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.spire-math:spire_2.10:0.7.4"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spire_2.10-0.7.4.pom
# org.scala-lang:scala-library:2.10.2 -> >=app-maven/scala-library-2.11.8:0
# org.scala-lang:scala-reflect:2.10.2 -> >=app-maven/scala-reflect-2.11.7:0
# org.scalamacros:quasiquotes_2.10:2.0.0 -> >=app-maven/quasiquotes-2.0.0:2.10
# org.spire-math:spire-macros_2.10:0.7.4 -> >=app-maven/spire-macros-0.7.4:2.10
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spire_2.10-0.7.4.pom
CDEPEND="
	>=app-maven/quasiquotes-2.0.0:2.10
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/scala-reflect-2.11.7:0
	>=app-maven/spire-macros-0.7.4:2.10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library,scala-reflect,quasiquotes-2.10,spire-macros-2.10"
