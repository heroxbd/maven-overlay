# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-common-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-common/2.2.0/hadoop-common-2.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-common-2.2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Common"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-common/2.2.0/hadoop-common-2.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-common:2.2.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-common-2.2.0.pom
# com.google.guava:guava:11.0.2 -> >=dev-java/guava-07:0
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# com.jcraft:jsch:0.1.42 -> >=app-maven/jsch-0.1.42:0
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# com.sun.jersey:jersey-json:1.9 -> >=app-maven/jersey-json-1.9:0
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# commons-cli:commons-cli:1.2 -> >=dev-java/commons-cli-1.2:1
# commons-codec:commons-codec:1.4 -> >=dev-java/commons-codec-1.7:0
# commons-configuration:commons-configuration:1.6 -> >=dev-java/commons-configuration-1.6:0
# commons-httpclient:commons-httpclient:3.1 -> >=dev-java/commons-httpclient-3.1:3
# commons-io:commons-io:2.1 -> >=dev-java/commons-io-2.4:1
# commons-lang:commons-lang:2.5 -> >=dev-java/commons-lang-2.0:0
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# commons-net:commons-net:3.1 -> >=dev-java/commons-net-3.2:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# net.java.dev.jets3t:jets3t:0.6.1 -> >=app-maven/jets3t-0.7.1:0
# org.apache.avro:avro:1.7.4 -> >=app-maven/avro-1.7.7:0
# org.apache.commons:commons-compress:1.4.1 -> >=app-maven/commons-compress-1.4.1:0
# org.apache.commons:commons-math:2.1 -> >=app-maven/commons-math-2.1:0
# org.apache.hadoop:hadoop-annotations:2.2.0 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-auth:2.2.0 -> >=app-maven/hadoop-auth-2.2.0:0
# org.apache.zookeeper:zookeeper:3.4.5 -> >=app-maven/zookeeper-3.4.5:0
# org.codehaus.jackson:jackson-core-asl:1.8.8 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-mapper-asl:1.8.8 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.mortbay.jetty:jetty:6.1.26 -> >=app-maven/jetty-6.1.26:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# xmlenc:xmlenc:0.52 -> >=app-maven/xmlenc-bin-0.52:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-common-2.2.0.pom
CDEPEND="
	>=app-maven/avro-1.7.7:0
	>=app-maven/commons-compress-1.4.1:0
	>=app-maven/commons-math-2.1:0
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-auth-2.2.0:0
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=app-maven/jersey-core-1.9:0
	>=app-maven/jersey-json-1.9:0
	>=app-maven/jersey-server-1.9:0
	>=app-maven/jets3t-0.7.1:0
	>=app-maven/jetty-6.1.26:0
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/jsch-0.1.42:0
	>=app-maven/protobuf-java-2.5.0:0
	>=app-maven/servlet-api-2.5:0
	>=app-maven/xmlenc-bin-0.52:0
	>=app-maven/zookeeper-3.4.5:0
	>=dev-java/commons-cli-1.2:1
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-configuration-1.6:0
	>=dev-java/commons-httpclient-3.1:3
	>=dev-java/commons-io-2.4:1
	>=dev-java/commons-lang-2.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/commons-net-3.2:0
	>=dev-java/guava-07:0
	>=dev-java/log4j-1.2.17:0
	>=dev-java/slf4j-api-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-common-2.2.0.pom
# org.apache.ant:ant:1.8.1 -> >=dev-java/ant-core-1.9.2:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/ant-core-1.9.2:0"
# Runtime dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-common-2.2.0.pom
# commons-el:commons-el:1.0 -> >=dev-java/commons-el-1.0:0
# javax.servlet.jsp:jsp-api:2.1 -> >=app-maven/jsp-api-2.1:0
# org.slf4j:slf4j-log4j12:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# tomcat:jasper-compiler:5.5.23 -> >=app-maven/jasper-compiler-bin-5.5.12:0
# tomcat:jasper-runtime:5.5.23 -> >=app-maven/jasper-runtime-bin-5.5.12:0
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=app-maven/jasper-compiler-bin-5.5.12:0
	>=app-maven/jasper-runtime-bin-5.5.12:0
	>=app-maven/jsp-api-2.1:0
	>=dev-java/commons-el-1.0:0
	>=dev-java/slf4j-api-1.7.7:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava,protobuf-java,jsch,jersey-core,jersey-json,jersey-server,commons-cli-1,commons-codec,commons-configuration,commons-httpclient-3,commons-io-1,commons-lang,commons-logging,commons-net,servlet-api,log4j,jets3t,avro,commons-compress,commons-math,hadoop-annotations,hadoop-auth,zookeeper,jackson-core-asl,jackson-mapper-asl,jetty,jetty-util,slf4j-api,xmlenc-bin,commons-el,jsp-api,slf4j-api,jasper-compiler-bin,jasper-runtime-bin"
JAVA_CLASSPATH_EXTRA="ant-core"
