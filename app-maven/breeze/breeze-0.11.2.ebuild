# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/breeze_2.10-0.11.2.pom --download-uri http://central.maven.org/maven2/org/scalanlp/breeze_2.10/0.11.2/breeze_2.10-0.11.2-sources.jar --slot 2.10 --keywords "~amd64" --ebuild breeze-0.11.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="breeze"
HOMEPAGE="http://scalanlp.org/"
SRC_URI="http://central.maven.org/maven2/org/scalanlp/breeze_2.10/0.11.2/breeze_2.10-0.11.2-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scalanlp:breeze_2.10:0.11.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/breeze_2.10-0.11.2.pom
# com.github.fommil.netlib:core:1.1.2 -> >=app-maven/core-1.1.2:0
# com.github.rwl:jtransforms:2.4.0 -> >=app-maven/jtransforms-2.4.0:0
# net.sf.opencsv:opencsv:2.3 -> >=dev-java/opencsv-2.3:0
# net.sourceforge.f2j:arpack_combined_all:0.1 -> >=app-maven/arpack-bin-0.1:combined_all
# org.apache.commons:commons-math3:3.2 -> >=app-maven/commons-math3-3.4.1:0
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# org.scalanlp:breeze-macros_2.10:0.11.2 -> >=app-maven/breeze-macros-0.11.2:2.10
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.spire-math:spire_2.10:0.7.4 -> >=app-maven/spire-0.7.4:2.10
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/breeze_2.10-0.11.2.pom
CDEPEND="
	>=app-maven/arpack-bin-0.1:combined_all
	>=app-maven/breeze-macros-0.11.2:2.10
	>=app-maven/commons-math3-3.4.1:0
	>=app-maven/core-1.1.2:0
	>=app-maven/jtransforms-2.4.0:0
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/spire-0.7.4:2.10
	>=dev-java/opencsv-2.3:0
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="core,jtransforms,opencsv,arpack-bin-combined_all,commons-math3,scala-library,breeze-macros-2.10,slf4j-log4j12,spire-2.10"
