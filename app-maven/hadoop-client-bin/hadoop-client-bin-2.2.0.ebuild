# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/hadoop-client-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-client/2.2.0/hadoop-client-2.2.0.jar --slot 0 --keywords "~amd64" --ebuild hadoop-client-bin-2.2.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Apache Hadoop Client"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-client/2.2.0/hadoop-client-2.2.0.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.hadoop:hadoop-client:2.2.0"

# Common dependencies
# POM: ../poms/hadoop-client-2.2.0.pom
# org.apache.hadoop:hadoop-annotations:2.2.0 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-common:2.2.0 -> >=app-maven/hadoop-common-2.2.0:0
# org.apache.hadoop:hadoop-hdfs:2.2.0 -> >=app-maven/hadoop-hdfs-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-app:2.2.0 -> >=app-maven/hadoop-mapreduce-client-app-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-core:2.2.0 -> >=app-maven/hadoop-mapreduce-client-core-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-jobclient:2.2.0 -> >=app-maven/hadoop-mapreduce-client-jobclient-2.2.0:0
# org.apache.hadoop:hadoop-yarn-api:2.2.0 -> >=app-maven/hadoop-yarn-api-2.2.0:0
# POM: ../poms/hadoop-client-2.2.0.pom
CDEPEND="
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-common-2.2.0:0
	>=app-maven/hadoop-hdfs-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-app-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-core-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-jobclient-2.2.0:0
	>=app-maven/hadoop-yarn-api-2.2.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="hadoop-annotations,hadoop-common,hadoop-hdfs,hadoop-mapreduce-client-app,hadoop-mapreduce-client-core,hadoop-mapreduce-client-jobclient,hadoop-yarn-api"
