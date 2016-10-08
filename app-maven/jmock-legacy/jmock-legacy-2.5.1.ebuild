# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jmock-legacy-2.5.1.pom --download-uri http://central.maven.org/maven2/org/jmock/jmock-legacy/2.5.1/jmock-legacy-2.5.1-sources.jar --slot 0 --keywords "~amd64" --ebuild jmock-legacy-2.5.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/jmock/jmock-legacy/2.5.1/jmock-legacy-2.5.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jmock:jmock-legacy:2.5.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jmock-legacy-2.5.1.pom
# cglib:cglib-nodep:2.1_3 -> >=app-maven/cglib-nodep-2.2.2:0
# org.jmock:jmock:2.5.1 -> >=dev-java/jmock-1.2.0:1.0
# org.objenesis:objenesis:1.0 -> >=app-maven/objenesis-2.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jmock-legacy-2.5.1.pom
CDEPEND="
	>=app-maven/cglib-nodep-2.2.2:0
	>=app-maven/objenesis-2.1:0
	>=dev-java/jmock-1.2.0:1.0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="cglib-nodep,jmock-1.0,objenesis"
