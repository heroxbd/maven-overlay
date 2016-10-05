# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/hadoop-hdfs-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-hdfs/2.2.0/hadoop-hdfs-2.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-hdfs-2.2.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop HDFS"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-hdfs/2.2.0/hadoop-hdfs-2.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.hadoop:hadoop-hdfs:2.2.0"

# Common dependencies
# POM: ../poms/hadoop-hdfs-2.2.0.pom
# com.google.guava:guava:11.0.2 -> >=dev-java/guava-07:0
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# commons-cli:commons-cli:1.2 -> >=dev-java/commons-cli-1.2:1
# commons-codec:commons-codec:1.4 -> >=dev-java/commons-codec-1.7:0
# commons-daemon:commons-daemon:1.0.13 -> >=dev-java/commons-daemon-1.0.15:0
# commons-io:commons-io:2.1 -> >=dev-java/commons-io-2.4:1
# commons-lang:commons-lang:2.5 -> >=dev-java/commons-lang-2.0:0
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# javax.servlet.jsp:jsp-api:2.1 -> >=app-maven/jsp-api-2.1:0
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# org.codehaus.jackson:jackson-core-asl:1.8.8 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.8.8 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.mortbay.jetty:jetty:6.1.26 -> >=app-maven/jetty-6.1.26:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
# tomcat:jasper-runtime:5.5.23 -> >=app-maven/jasper-runtime-bin-5.5.12:0
# xmlenc:xmlenc:0.52 -> >=app-maven/xmlenc-bin-0.52:0
# POM: ../poms/hadoop-hdfs-2.2.0.pom
CDEPEND="
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=app-maven/jasper-runtime-bin-5.5.12:0
	>=app-maven/jersey-core-1.9:0
	>=app-maven/jersey-server-1.9:0
	>=app-maven/jetty-6.1.26:0
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/jsp-api-2.1:0
	>=app-maven/protobuf-java-2.5.0:0
	>=app-maven/servlet-api-2.5:0
	>=app-maven/xmlenc-bin-0.52:0
	>=dev-java/commons-cli-1.2:1
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-daemon-1.0.15:0
	>=dev-java/commons-io-2.4:1
	>=dev-java/commons-lang-2.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/guava-07:0
	>=dev-java/log4j-1.2.17:0"
# Compile dependencies
# POM: ../poms/hadoop-hdfs-2.2.0.pom
# org.apache.hadoop:hadoop-annotations:2.2.0 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-auth:2.2.0 -> >=app-maven/hadoop-auth-2.2.0:0
# org.apache.hadoop:hadoop-common:2.2.0 -> >=app-maven/hadoop-common-2.2.0:0
# org.slf4j:slf4j-log4j12:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-auth-2.2.0:0
	>=app-maven/hadoop-common-2.2.0:0
	>=dev-java/slf4j-api-1.7.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava,protobuf-java,jersey-core,jersey-server,commons-cli-1,commons-codec,commons-daemon,commons-io-1,commons-lang,commons-logging,servlet-api,jsp-api,log4j,jackson-core-asl,jackson-mapper-asl,jetty,jetty-util,jasper-runtime-bin,xmlenc-bin"
JAVA_CLASSPATH_EXTRA="hadoop-annotations,hadoop-auth,hadoop-common,slf4j-api"
