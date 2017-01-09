# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-hadoop-1.7.0.pom --download-uri http://central.maven.org/maven2/org/apache/parquet/parquet-hadoop/1.7.0/parquet-hadoop-1.7.0-sources.jar --slot 0 --keywords "~amd64" --ebuild parquet-hadoop-1.7.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Parquet is a columnar storage format that supports nested data. This provides the java implementation."
HOMEPAGE="https://parquet.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/parquet/parquet-hadoop/1.7.0/parquet-hadoop-1.7.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.parquet:parquet-hadoop:1.7.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-hadoop-1.7.0.pom
# org.apache.parquet:parquet-column:1.7.0 -> >=app-maven/parquet-column-1.7.0:0
# org.apache.parquet:parquet-format:2.3.0-incubating -> >=app-maven/parquet-format-2.3.0:0
# org.apache.parquet:parquet-jackson:1.7.0 -> >=app-maven/parquet-jackson-1.7.0:0
# org.codehaus.jackson:jackson-core-asl:1.9.11 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.9.11 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.xerial.snappy:snappy-java:1.1.1.6 -> >=dev-java/snappy-1.0.3_rc3:1.0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-hadoop-1.7.0.pom
CDEPEND="
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=app-maven/parquet-column-1.7.0:0
	>=app-maven/parquet-format-2.3.0:0
	>=app-maven/parquet-jackson-1.7.0:0
	>=dev-java/snappy-1.0.3_rc3:1.0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-hadoop-1.7.0.pom
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# org.apache.hadoop:hadoop-client:1.1.0 -> >=app-maven/hadoop-client-bin-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.6
	app-arch/unzip
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=dev-java/log4j-1.2.17:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.6"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="parquet-column,parquet-format,parquet-jackson,jackson-core-asl,jackson-mapper-asl,snappy-1.0"
JAVA_CLASSPATH_EXTRA="log4j,hadoop-client-bin"
