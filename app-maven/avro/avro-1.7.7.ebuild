# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/avro-1.7.7.pom --download-uri http://central.maven.org/maven2/org/apache/avro/avro/1.7.7/avro-1.7.7-sources.jar --slot 0 --keywords "~amd64" --ebuild avro-1.7.7.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Avro core components"
HOMEPAGE="http://avro.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/avro/avro/1.7.7/avro-1.7.7-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.avro:avro:1.7.7"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/avro-1.7.7.pom
# com.thoughtworks.paranamer:paranamer:2.3 -> >=app-maven/paranamer-2.6:0
# org.apache.commons:commons-compress:1.4.1 -> >=app-maven/commons-compress-1.4.1:0
# org.codehaus.jackson:jackson-core-asl:1.9.13 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.9.13 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.slf4j:slf4j-api:1.6.4 -> >=dev-java/slf4j-nop-1.7.7:0
# org.xerial.snappy:snappy-java:1.0.5 -> >=dev-java/snappy-1.1.0.1:1.1
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/avro-1.7.7.pom
CDEPEND="
	>=app-maven/commons-compress-1.4.1:0
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=app-maven/paranamer-2.6:0
	>=dev-java/slf4j-nop-1.7.7:0
	>=dev-java/snappy-1.1.0.1:1.1"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"
# Runtime dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/avro-1.7.7.pom
# org.slf4j:slf4j-simple:1.6.4 -> >=dev-java/slf4j-nop-1.7.7:0
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=dev-java/slf4j-nop-1.7.7:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="paranamer,commons-compress,jackson-core-asl,jackson-mapper-asl,slf4j-nop,snappy-1.1,slf4j-nop"
