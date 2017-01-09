# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-resourcemanager-2.7.2.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-yarn-server-resourcemanager/2.7.2/hadoop-yarn-server-resourcemanager-2.7.2-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-yarn-server-resourcemanager-2.7.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Project POM"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-yarn-server-resourcemanager/2.7.2/hadoop-yarn-server-resourcemanager-2.7.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-yarn-server-resourcemanager:2.7.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-resourcemanager-2.7.2.pom
# com.google.guava:guava:11.0.2 -> >=dev-java/guava-10.0.1:10
# com.google.inject:guice:3.0 -> >=dev-java/guice-4.1:4
# com.google.inject.extensions:guice-servlet:3.0 -> >=dev-java/guice-4.1:4
# com.google.protobuf:protobuf-java:2.5.0 -> >=app-maven/protobuf-java-2.5.0:0
# com.sun.jersey:jersey-client:1.9 -> >=app-maven/jersey-client-1.9:0
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# com.sun.jersey:jersey-json:1.9 -> >=app-maven/jersey-json-1.9:0
# com.sun.jersey.contribs:jersey-guice:1.9 -> >=app-maven/jersey-guice-1.9:0
# commons-io:commons-io:2.4 -> >=dev-java/commons-io-2.4:1
# commons-lang:commons-lang:2.6 -> >=dev-java/commons-lang-2.0:0
# commons-logging:commons-logging:1.1.3 -> >=dev-java/commons-logging-1.2:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# javax.xml.bind:jaxb-api:2.2.2 -> >=app-maven/jaxb-api-2.1:0
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# org.apache.hadoop:hadoop-annotations:2.7.2 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-yarn-api:2.7.2 -> >=app-maven/hadoop-yarn-api-2.2.0:0
# org.apache.hadoop:hadoop-yarn-common:2.7.2 -> >=app-maven/hadoop-yarn-common-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-applicationhistoryservice:2.7.2 -> >=app-maven/hadoop-yarn-server-applicationhistoryservice-2.7.2:0
# org.apache.hadoop:hadoop-yarn-server-common:2.7.2 -> >=app-maven/hadoop-yarn-server-common-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-web-proxy:2.7.2 -> >=app-maven/hadoop-yarn-server-web-proxy-2.2.0:0
# org.apache.zookeeper:zookeeper:3.4.6 -> >=app-maven/zookeeper-3.4.5:0
# org.apache.zookeeper:zookeeper:3.4.6 -> >=app-maven/zookeeper-3.4.5:0
# org.codehaus.jettison:jettison:1.1 -> >=dev-java/jettison-1.3.7:0
# org.fusesource.leveldbjni:leveldbjni-all:1.8 -> >=app-maven/leveldbjni-all-1.8:0
# org.mortbay.jetty:jetty-util:6.1.26 -> >=app-maven/jetty-util-6.1.26:0
# org.slf4j:slf4j-api:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-resourcemanager-2.7.2.pom
CDEPEND="
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-yarn-api-2.2.0:0
	>=app-maven/hadoop-yarn-common-2.2.0:0
	>=app-maven/hadoop-yarn-server-applicationhistoryservice-2.7.2:0
	>=app-maven/hadoop-yarn-server-common-2.2.0:0
	>=app-maven/hadoop-yarn-server-web-proxy-2.2.0:0
	>=app-maven/jaxb-api-2.1:0
	>=app-maven/jersey-client-1.9:0
	>=app-maven/jersey-core-1.9:0
	>=app-maven/jersey-guice-1.9:0
	>=app-maven/jersey-json-1.9:0
	>=app-maven/jetty-util-6.1.26:0
	>=app-maven/leveldbjni-all-1.8:0
	>=app-maven/protobuf-java-2.5.0:0
	>=app-maven/servlet-api-2.5:0
	>=app-maven/zookeeper-3.4.5:0
	>=dev-java/commons-io-2.4:1
	>=dev-java/commons-lang-2.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/guice-4.1:4
	>=dev-java/jettison-1.3.7:0
	>=dev-java/log4j-1.2.17:0
	>=dev-java/slf4j-log4j12-1.7.7:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-resourcemanager-2.7.2.pom
# org.apache.hadoop:hadoop-common:2.7.2 -> >=app-maven/hadoop-common-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-common-2.2.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10,guice-4,guice-4,protobuf-java,jersey-client,jersey-core,jersey-json,jersey-guice,commons-io-1,commons-lang,commons-logging,servlet-api,jaxb-api,log4j,hadoop-annotations,hadoop-yarn-api,hadoop-yarn-common,hadoop-yarn-server-applicationhistoryservice,hadoop-yarn-server-common,hadoop-yarn-server-web-proxy,zookeeper,zookeeper,jettison,leveldbjni-all,jetty-util,slf4j-log4j12"
JAVA_CLASSPATH_EXTRA="hadoop-common"
