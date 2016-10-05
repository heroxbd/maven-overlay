# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/zookeeper-3.4.5.pom --download-uri http://central.maven.org/maven2/org/apache/zookeeper/zookeeper/3.4.5/zookeeper-3.4.5-sources.jar --slot 0 --keywords "~amd64" --ebuild zookeeper-3.4.5.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/zookeeper/zookeeper/3.4.5/zookeeper-3.4.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.zookeeper:zookeeper:3.4.5"

# Common dependencies
# POM: ../poms/zookeeper-3.4.5.pom
# commons-collections:commons-collections:3.1 -> >=dev-java/commons-collections-3.2.1:0
# commons-lang:commons-lang:2.4 -> >=dev-java/commons-lang-2.6:2.1
# jdiff:jdiff:1.0.9 -> >=app-maven/jdiff-bin-1.0.9:0
# jline:jline:0.9.94 -> >=dev-java/jline-2.12.1:2
# log4j:log4j:1.2.15 -> >=dev-java/log4j-1.2.17:0
# org.apache.rat:apache-rat-tasks:0.6 -> >=app-maven/apache-rat-tasks-0.6:0
# org.jboss.netty:netty:3.2.2.Final -> >=app-maven/netty-3.2.2:0
# org.slf4j:slf4j-api:1.6.1 -> >=dev-java/slf4j-api-1.7.7:0
# org.slf4j:slf4j-log4j12:1.6.1 -> >=dev-java/slf4j-api-1.7.7:0
# org.vafer:jdeb:0.8 -> >=app-maven/jdeb-0.8:0
# xerces:xerces:1.4.4 -> >=dev-java/xerces-2.11.0:2
# POM: ../poms/zookeeper-3.4.5.pom
CDEPEND="
	>=app-maven/apache-rat-tasks-0.6:0
	>=app-maven/jdeb-0.8:0
	>=app-maven/jdiff-bin-1.0.9:0
	>=app-maven/netty-3.2.2:0
	>=dev-java/commons-collections-3.2.1:0
	>=dev-java/commons-lang-2.6:2.1
	>=dev-java/jline-2.12.1:2
	>=dev-java/log4j-1.2.17:0
	>=dev-java/slf4j-api-1.7.7:0
	>=dev-java/xerces-2.11.0:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-collections,commons-lang-2.1,jdiff-bin,jline-2,log4j,apache-rat-tasks,netty,slf4j-api,slf4j-api,jdeb,xerces-2"
