# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/hadoop-yarn-api-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-yarn-api/2.2.0/hadoop-yarn-api-2.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-yarn-api-2.2.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Project POM"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-yarn-api/2.2.0/hadoop-yarn-api-2.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.hadoop:hadoop-yarn-api:2.2.0"

# Common dependencies
# POM: ../poms/hadoop-yarn-api-2.2.0.pom
# com.google.inject:guice:3.0 -> >=dev-java/guice-4.0:4
# com.google.inject.extensions:guice-servlet:3.0 -> >=dev-java/guice-4.0:4
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# com.sun.jersey:jersey-json:1.9 -> >=app-maven/jersey-json-1.9:0
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# com.sun.jersey.contribs:jersey-guice:1.9 -> >=app-maven/jersey-guice-1.9:0
# com.sun.jersey.jersey-test-framework:jersey-test-framework-grizzly2:1.9 -> >=app-maven/jersey-test-framework-grizzly2-1.9:0
# commons-io:commons-io:2.1 -> >=dev-java/commons-io-2.4:1
# io.netty:netty:3.6.2.Final -> >=app-maven/netty-3.8.0:0
# org.apache.hadoop:hadoop-annotations:2.2.0 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# org.slf4j:slf4j-log4j12:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# POM: ../poms/hadoop-yarn-api-2.2.0.pom
CDEPEND="
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/jersey-guice-1.9:0
	>=app-maven/jersey-json-1.9:0
	>=app-maven/jersey-server-1.9:0
	>=app-maven/jersey-test-framework-grizzly2-1.9:0
	>=app-maven/netty-3.8.0:0
	>=app-maven/protobuf-java-2.5.0:0
	>=dev-java/commons-io-2.4:1
	>=dev-java/guice-4.0:4
	>=dev-java/slf4j-api-1.7.7:0"
# Compile dependencies
# POM: ../poms/hadoop-yarn-api-2.2.0.pom
# org.apache.hadoop:hadoop-common:2.2.0 -> >=app-maven/hadoop-common-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-common-2.2.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guice-4,guice-4,protobuf-java,jersey-json,jersey-server,jersey-guice,jersey-test-framework-grizzly2,commons-io-1,netty,hadoop-annotations,slf4j-api,slf4j-api"
JAVA_CLASSPATH_EXTRA="hadoop-common"
