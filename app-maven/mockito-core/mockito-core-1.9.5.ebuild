# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/mockito-core-1.9.5.pom --download-uri http://central.maven.org/maven2/org/mockito/mockito-core/1.9.5/mockito-core-1.9.5-sources.jar --slot 0 --keywords "~amd64" --ebuild mockito-core-1.9.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Mock objects library for java"
HOMEPAGE="http://www.mockito.org"
SRC_URI="http://central.maven.org/maven2/org/mockito/mockito-core/1.9.5/mockito-core-1.9.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.mockito:mockito-core:1.9.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/mockito-core-1.9.5.pom
# org.hamcrest:hamcrest-core:1.1 -> >=dev-java/hamcrest-core-1.1:0
# org.objenesis:objenesis:1.0 -> >=app-maven/objenesis-2.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/mockito-core-1.9.5.pom
CDEPEND="
	>=app-maven/objenesis-2.1:0
	>=dev-java/hamcrest-core-1.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="hamcrest-core,objenesis"
