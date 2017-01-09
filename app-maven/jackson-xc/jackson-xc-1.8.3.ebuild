# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-xc-1.8.3.pom --download-uri http://central.maven.org/maven2/org/codehaus/jackson/jackson-xc/1.8.3/jackson-xc-1.8.3-sources.jar --slot 0 --keywords "~amd64" --ebuild jackson-xc-1.8.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Extensions that provide interoperability support for
Jackson JSON processor's data binding functionality."
HOMEPAGE="http://jackson.codehaus.org"
SRC_URI="http://central.maven.org/maven2/org/codehaus/jackson/jackson-xc/1.8.3/jackson-xc-1.8.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.codehaus.jackson:jackson-xc:1.8.3"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-xc-1.8.3.pom
# org.codehaus.jackson:jackson-core-asl:1.8.3 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.8.3 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-xc-1.8.3.pom
CDEPEND="
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-core-asl,jackson-mapper-asl"
