# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scala-xml_2.11-1.0.2.pom --download-uri http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.2/scala-xml_2.11-1.0.2-sources.jar --slot 2.11 --keywords "~amd64" --ebuild scala-xml-1.0.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="scala-xml"
HOMEPAGE="http://www.scala-lang.org/"
SRC_URI="http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.2/scala-xml_2.11-1.0.2-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.scala-lang.modules:scala-xml_2.11:1.0.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scala-xml_2.11-1.0.2.pom
# org.scala-lang:scala-library:2.11.1 -> >=app-maven/scala-library-2.11.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/scala-xml_2.11-1.0.2.pom
CDEPEND="
	>=app-maven/scala-library-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scala-library"
