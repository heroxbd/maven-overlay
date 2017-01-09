# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/adam-core_2.10-0.18.0.pom --download-uri http://central.maven.org/maven2/org/bdgenomics/adam/adam-core_2.10/0.18.0/adam-core_2.10-0.18.0-sources.jar --slot 2.10 --keywords "~amd64" --ebuild adam-core-0.18.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A fast, scalable genome analysis system"
HOMEPAGE="http://bdgenomics.org/adam-core_2.10/"
SRC_URI="http://central.maven.org/maven2/org/bdgenomics/adam/adam-core_2.10/0.18.0/adam-core_2.10-0.18.0-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.bdgenomics.adam:adam-core_2.10:0.18.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/adam-core_2.10-0.18.0.pom
# com.esotericsoftware.kryo:kryo:2.21 -> >=dev-java/kryo-2.24.0:2
# com.github.samtools:htsjdk:1.133 -> >=app-maven/htsjdk-2.6.0:0
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
# com.netflix.servo:servo-core:0.5.5 -> >=app-maven/servo-core-0.5.5:0
# commons-io:commons-io:1.3.2 -> >=dev-java/commons-io-2.4:1
# it.unimi.dsi:fastutil:6.4.4 -> >=dev-java/fastutil-7.0.10:0
# org.apache.avro:avro:1.7.6 -> >=app-maven/avro-1.7.7:0
# org.apache.httpcomponents:httpclient:4.3.2 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.apache.parquet:parquet-avro:1.8.1 -> >=app-maven/parquet-avro-1.8.1:0
# org.apache.parquet:parquet-scala_2.10:1.8.1 -> >=app-maven/parquet-scala-1.8.1:2.10
# org.bdgenomics.bdg-formats:bdg-formats:0.6.1 -> >=app-maven/bdg-formats-0.6.1:0
# org.bdgenomics.utils:utils-cli_2.10:0.2.3 -> >=app-maven/utils-cli-0.2.3:2.10
# org.bdgenomics.utils:utils-io_2.10:0.2.3 -> >=app-maven/utils-io-0.2.3:2.10
# org.bdgenomics.utils:utils-metrics_2.10:0.2.3 -> >=app-maven/utils-metrics-0.2.3:2.10
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# org.scoverage:scalac-scoverage-plugin_2.10:1.1.1 -> >=app-maven/scalac-scoverage-plugin-1.1.1:2.10
# org.seqdoop:hadoop-bam:7.0.0 -> >=app-maven/hadoop-bam-7.0.0:0
# org.slf4j:slf4j-log4j12:1.7.5 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/adam-core_2.10-0.18.0.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0
	>=app-maven/bdg-formats-0.6.1:0
	>=app-maven/hadoop-bam-7.0.0:0
	>=app-maven/htsjdk-2.6.0:0
	>=app-maven/parquet-avro-1.8.1:0
	>=app-maven/parquet-scala-1.8.1:2.10
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/scalac-scoverage-plugin-1.1.1:2.10
	>=app-maven/servo-core-0.5.5:0
	>=app-maven/utils-cli-0.2.3:2.10
	>=app-maven/utils-io-0.2.3:2.10
	>=app-maven/utils-metrics-0.2.3:2.10
	>=dev-java/commons-io-2.4:1
	>=dev-java/fastutil-7.0.10:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/httpcomponents-client-4.5:4.5
	>=dev-java/kryo-2.24.0:2
	>=dev-java/slf4j-log4j12-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/adam-core_2.10-0.18.0.pom
# org.apache.hadoop:hadoop-client:2.2.0 -> >=app-maven/hadoop-client-bin-2.2.0:0
# org.apache.spark:spark-core_2.10:1.4.1 -> >=app-maven/spark-core-1.6.1:2.10
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=app-maven/spark-core-1.6.1:2.10"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="kryo-2,htsjdk,guava-10,servo-core,commons-io-1,fastutil,avro,httpcomponents-client-4.5,parquet-avro,parquet-scala-2.10,bdg-formats,utils-cli-2.10,utils-io-2.10,utils-metrics-2.10,scala-library,scalac-scoverage-plugin-2.10,hadoop-bam,slf4j-log4j12"
JAVA_CLASSPATH_EXTRA="hadoop-client-bin,spark-core-2.10"
