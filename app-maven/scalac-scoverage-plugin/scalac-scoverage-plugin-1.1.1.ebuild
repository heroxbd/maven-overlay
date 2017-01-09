# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalac-scoverage-plugin_2.10-1.1.1.pom --download-uri http://central.maven.org/maven2/org/scoverage/scalac-scoverage-plugin_2.10/1.1.1/scalac-scoverage-plugin_2.10-1.1.1-sources.jar --slot 2.10 --keywords "~amd64" --ebuild scalac-scoverage-plugin-1.1.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="scalac-scoverage-plugin"
HOMEPAGE="https://github.com/scoverage/scalac-scoverage-plugin"
SRC_URI="http://central.maven.org/maven2/org/scoverage/scalac-scoverage-plugin_2.10/1.1.1/scalac-scoverage-plugin_2.10-1.1.1-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scoverage:scalac-scoverage-plugin_2.10:1.1.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalac-scoverage-plugin_2.10-1.1.1.pom
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalac-scoverage-plugin_2.10-1.1.1.pom
CDEPEND="
	>=app-maven/scala-library-2.11.8:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scalac-scoverage-plugin_2.10-1.1.1.pom
# org.scala-lang:scala-compiler:2.10.4 -> >=dev-lang/scala-2.9.3:2.9
# org.scala-lang:scala-reflect:2.10.4 -> >=app-maven/scala-reflect-2.11.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/scala-reflect-2.11.7:0
	>=dev-lang/scala-2.9.3:2.9"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library"
JAVA_CLASSPATH_EXTRA="scala-2.9,scala-reflect"
