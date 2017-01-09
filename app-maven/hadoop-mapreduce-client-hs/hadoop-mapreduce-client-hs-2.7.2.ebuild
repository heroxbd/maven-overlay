# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-hs-2.7.2.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-mapreduce-client-hs/2.7.2/hadoop-mapreduce-client-hs-2.7.2-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-mapreduce-client-hs-2.7.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Project POM"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-mapreduce-client-hs/2.7.2/hadoop-mapreduce-client-hs-2.7.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-mapreduce-client-hs:2.7.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-hs-2.7.2.pom
# com.google.inject.extensions:guice-servlet:3.0 -> >=dev-java/guice-4.1:4
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# io.netty:netty:3.6.2.Final -> >=app-maven/netty-3.8.0:0
# org.apache.avro:avro:1.7.4 -> >=app-maven/avro-1.7.7:0
# org.apache.hadoop:hadoop-annotations:2.7.2 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-hdfs:2.7.2 -> >=app-maven/hadoop-hdfs-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-app:2.7.2 -> >=app-maven/hadoop-mapreduce-client-app-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-common:2.7.2 -> >=app-maven/hadoop-mapreduce-client-common-2.2.0:0
# org.fusesource.leveldbjni:leveldbjni-all:1.8 -> >=app-maven/leveldbjni-all-1.8:0
# org.slf4j:slf4j-api:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.slf4j:slf4j-log4j12:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-hs-2.7.2.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-hdfs-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-app-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-common-2.2.0:0
	>=app-maven/leveldbjni-all-1.8:0
	>=app-maven/netty-3.8.0:0
	>=app-maven/protobuf-java-2.5.0:0
	>=dev-java/guice-4.1:4
	>=dev-java/slf4j-log4j12-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-hs-2.7.2.pom
# com.google.guava:guava:11.0.2 -> >=dev-java/guava-10.0.1:10
# commons-cli:commons-cli:1.2 -> >=dev-java/commons-cli-1.2:1
# commons-codec:commons-codec:1.4 -> >=dev-java/commons-codec-1.7:0
# commons-collections:commons-collections:3.2.2 -> >=dev-java/commons-collections-3.2.1:0
# commons-lang:commons-lang:2.6 -> >=dev-java/commons-lang-2.0:0
# commons-logging:commons-logging:1.1.3 -> >=dev-java/commons-logging-1.2:0
# org.apache.hadoop:hadoop-common:2.7.2 -> >=app-maven/hadoop-common-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-common-2.2.0:0
	>=dev-java/commons-cli-1.2:1
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-collections-3.2.1:0
	>=dev-java/commons-lang-2.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/guava-10.0.1:10"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guice-4,protobuf-java,netty,avro,hadoop-annotations,hadoop-hdfs,hadoop-mapreduce-client-app,hadoop-mapreduce-client-common,leveldbjni-all,slf4j-log4j12,slf4j-log4j12"
JAVA_CLASSPATH_EXTRA="guava-10,commons-cli-1,commons-codec,commons-collections,commons-lang,commons-logging,hadoop-common"