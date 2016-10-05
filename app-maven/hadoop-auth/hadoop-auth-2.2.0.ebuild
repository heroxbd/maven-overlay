# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/hadoop-auth-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-auth/2.2.0/hadoop-auth-2.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-auth-2.2.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Auth - Java HTTP SPNEGO"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-auth/2.2.0/hadoop-auth-2.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.hadoop:hadoop-auth:2.2.0"

# Common dependencies
# POM: ../poms/hadoop-auth-2.2.0.pom
# commons-codec:commons-codec:1.4 -> >=dev-java/commons-codec-1.7:0
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
# POM: ../poms/hadoop-auth-2.2.0.pom
CDEPEND="
	>=dev-java/commons-codec-1.7:0
	>=dev-java/slf4j-api-1.7.7:0"
# Compile dependencies
# POM: ../poms/hadoop-auth-2.2.0.pom
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# org.apache.hadoop:hadoop-annotations:2.2.0 -> >=app-maven/hadoop-annotations-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/servlet-api-2.5:0"
# Runtime dependencies
# POM: ../poms/hadoop-auth-2.2.0.pom
# log4j:log4j:1.2.17 -> >=dev-java/log4j-1.2.17:0
# org.slf4j:slf4j-log4j12:1.7.5 -> >=dev-java/slf4j-api-1.7.7:0
RDEPEND="${CDEPEND}
	>=virtual/jre-1.7
	>=dev-java/log4j-1.2.17:0
	>=dev-java/slf4j-api-1.7.7:0"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-codec,slf4j-api,log4j,slf4j-api"
JAVA_CLASSPATH_EXTRA="servlet-api,hadoop-annotations"
