# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/woodstox-core-asl-4.1.2.pom --download-uri http://central.maven.org/maven2/org/codehaus/woodstox/woodstox-core-asl/4.1.2/woodstox-core-asl-4.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild woodstox-core-asl-4.1.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Woodstox is a high-performance XML processor that
implements Stax (JSR-173) and SAX2 APIs"
HOMEPAGE="http://woodstox.codehaus.org"
SRC_URI="http://central.maven.org/maven2/org/codehaus/woodstox/woodstox-core-asl/4.1.2/woodstox-core-asl-4.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.codehaus.woodstox:woodstox-core-asl:4.1.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/woodstox-core-asl-4.1.2.pom
# javax.xml.stream:stax-api:1.0-2 -> >=app-maven/stax-api-1.0.2:0
# org.codehaus.woodstox:stax2-api:3.1.1 -> >=dev-java/stax2-api-4.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/woodstox-core-asl-4.1.2.pom
CDEPEND="
	>=app-maven/stax-api-1.0.2:0
	>=dev-java/stax2-api-4.0.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="stax-api,stax2-api"
