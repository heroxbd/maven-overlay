# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-minicluster-2.7.2.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-minicluster/2.7.2/hadoop-minicluster-2.7.2.jar --slot 0 --keywords "~amd64" --ebuild hadoop-minicluster-bin-2.7.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Apache Hadoop Mini-Cluster"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-minicluster/2.7.2/hadoop-minicluster-2.7.2.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-minicluster:2.7.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-minicluster-2.7.2.pom
# org.apache.hadoop:hadoop-common:2.7.2 -> >=app-maven/hadoop-common-2.2.0:0
# org.apache.hadoop:hadoop-common:2.7.2 -> >=app-maven/hadoop-common-2.2.0:0
# org.apache.hadoop:hadoop-hdfs:2.7.2 -> >=app-maven/hadoop-hdfs-2.2.0:0
# org.apache.hadoop:hadoop-hdfs:2.7.2 -> >=app-maven/hadoop-hdfs-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-app:2.7.2 -> >=app-maven/hadoop-mapreduce-client-app-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-core:2.7.2 -> >=app-maven/hadoop-mapreduce-client-core-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-hs:2.7.2 -> >=app-maven/hadoop-mapreduce-client-hs-2.7.2:0
# org.apache.hadoop:hadoop-mapreduce-client-jobclient:2.7.2 -> >=app-maven/hadoop-mapreduce-client-jobclient-2.2.0:0
# org.apache.hadoop:hadoop-mapreduce-client-jobclient:2.7.2 -> >=app-maven/hadoop-mapreduce-client-jobclient-2.2.0:0
# org.apache.hadoop:hadoop-yarn-api:2.7.2 -> >=app-maven/hadoop-yarn-api-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-tests:2.7.2 -> >=app-maven/hadoop-yarn-server-tests-2.7.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-minicluster-2.7.2.pom
CDEPEND="
	>=app-maven/hadoop-common-2.2.0:0
	>=app-maven/hadoop-hdfs-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-app-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-core-2.2.0:0
	>=app-maven/hadoop-mapreduce-client-hs-2.7.2:0
	>=app-maven/hadoop-mapreduce-client-jobclient-2.2.0:0
	>=app-maven/hadoop-yarn-api-2.2.0:0
	>=app-maven/hadoop-yarn-server-tests-2.7.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="hadoop-common,hadoop-common,hadoop-hdfs,hadoop-hdfs,hadoop-mapreduce-client-app,hadoop-mapreduce-client-core,hadoop-mapreduce-client-hs,hadoop-mapreduce-client-jobclient,hadoop-mapreduce-client-jobclient,hadoop-yarn-api,hadoop-yarn-server-tests"
