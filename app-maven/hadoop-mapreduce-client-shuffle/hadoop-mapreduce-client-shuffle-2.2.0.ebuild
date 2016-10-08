# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-shuffle-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-mapreduce-client-shuffle/2.2.0/hadoop-mapreduce-client-shuffle-2.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-mapreduce-client-shuffle-2.2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Project POM"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-mapreduce-client-shuffle/2.2.0/hadoop-mapreduce-client-shuffle-2.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-mapreduce-client-shuffle:2.2.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-shuffle-2.2.0.pom
# com.google.inject.extensions:guice-servlet:3.0 -> >=dev-java/guice-4.0:4
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# io.netty:netty:3.6.2.Final -> >=app-maven/netty-3.8.0:0
# org.apache.avro:avro:1.7.4 -> >=app-maven/avro-1.7.7:0
# org.apache.hadoop:hadoop-annotations:2.2.0 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-core:2.2.0 -> >=app-maven/hadoop-mapreduce-client-core-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-nodemanager:2.2.0 -> >=app-maven/hadoop-yarn-server-nodemanager-2.2.0:0
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# org.slf4j:slf4j-log4j12:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-shuffle-2.2.0.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-core-2.2.0:0
	>=app-maven/hadoop-yarn-server-nodemanager-2.2.0:0
	>=app-maven/netty-3.8.0:0
	>=app-maven/protobuf-java-2.5.0:0
	>=dev-java/guice-4.0:4
	>=dev-java/slf4j-api-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-mapreduce-client-shuffle-2.2.0.pom
# com.google.guava:guava:11.0.2 -> >=dev-java/guava-07:0
# commons-cli:commons-cli:1.2 -> >=dev-java/commons-cli-1.2:1
# commons-codec:commons-codec:1.4 -> >=dev-java/commons-codec-1.7:0
# commons-lang:commons-lang:2.5 -> >=dev-java/commons-lang-2.0:0
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# org.apache.hadoop:hadoop-common:2.2.0 -> >=app-maven/hadoop-common-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-common-2.2.0:0
	>=dev-java/commons-cli-1.2:1
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-lang-2.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/guava-07:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guice-4,protobuf-java,netty,avro,hadoop-annotations,hadoop-mapreduce-client-core,hadoop-yarn-server-nodemanager,slf4j-api,slf4j-api"
JAVA_CLASSPATH_EXTRA="guava,commons-cli-1,commons-codec,commons-lang,commons-logging,hadoop-common"
