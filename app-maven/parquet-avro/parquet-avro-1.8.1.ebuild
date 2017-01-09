# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-avro-1.8.1.pom --download-uri http://central.maven.org/maven2/org/apache/parquet/parquet-avro/1.8.1/parquet-avro-1.8.1-sources.jar --slot 0 --keywords "~amd64" --ebuild parquet-avro-1.8.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Parquet is a columnar storage format that supports nested data. This provides the java implementation."
HOMEPAGE="https://parquet.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/parquet/parquet-avro/1.8.1/parquet-avro-1.8.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.parquet:parquet-avro:1.8.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-avro-1.8.1.pom
# it.unimi.dsi:fastutil:6.5.7 -> >=dev-java/fastutil-7.0.10:0
# org.apache.avro:avro:1.7.6 -> >=app-maven/avro-1.7.7:0
# org.apache.parquet:parquet-column:1.8.1 -> >=app-maven/parquet-column-1.7.0:0
# org.apache.parquet:parquet-format:2.3.0-incubating -> >=app-maven/parquet-format-2.3.0:0
# org.apache.parquet:parquet-hadoop:1.8.1 -> >=app-maven/parquet-hadoop-1.7.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-avro-1.8.1.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0
	>=app-maven/parquet-column-1.7.0:0
	>=app-maven/parquet-format-2.3.0:0
	>=app-maven/parquet-hadoop-1.7.0:0
	>=dev-java/fastutil-7.0.10:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-avro-1.8.1.pom
# org.apache.hadoop:hadoop-client:1.1.0 -> >=app-maven/hadoop-client-bin-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.6
	app-arch/unzip
	>=app-maven/hadoop-client-bin-2.2.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.6"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="fastutil,avro,parquet-column,parquet-format,parquet-hadoop"
JAVA_CLASSPATH_EXTRA="hadoop-client-bin"
