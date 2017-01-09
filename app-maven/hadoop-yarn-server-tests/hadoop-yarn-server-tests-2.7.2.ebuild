# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-tests-2.7.2.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-yarn-server-tests/2.7.2/hadoop-yarn-server-tests-2.7.2-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-yarn-server-tests-2.7.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Project POM"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-yarn-server-tests/2.7.2/hadoop-yarn-server-tests-2.7.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-yarn-server-tests:2.7.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-tests-2.7.2.pom
# com.google.guava:guava:11.0.2 -> >=dev-java/guava-10.0.1:10
# commons-logging:commons-logging:1.1.3 -> >=dev-java/commons-logging-1.2:0
# org.apache.hadoop:hadoop-annotations:2.7.2 -> >=app-maven/hadoop-annotations-2.2.0:0
# org.apache.hadoop:hadoop-yarn-api:2.7.2 -> >=app-maven/hadoop-yarn-api-2.2.0:0
# org.apache.hadoop:hadoop-yarn-common:2.7.2 -> >=app-maven/hadoop-yarn-common-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-common:2.7.2 -> >=app-maven/hadoop-yarn-server-common-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-nodemanager:2.7.2 -> >=app-maven/hadoop-yarn-server-nodemanager-2.2.0:0
# org.apache.hadoop:hadoop-yarn-server-resourcemanager:2.7.2 -> >=app-maven/hadoop-yarn-server-resourcemanager-2.7.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-tests-2.7.2.pom
CDEPEND="
	>=app-maven/hadoop-annotations-2.2.0:0
	>=app-maven/hadoop-yarn-api-2.2.0:0
	>=app-maven/hadoop-yarn-common-2.2.0:0
	>=app-maven/hadoop-yarn-server-common-2.2.0:0
	>=app-maven/hadoop-yarn-server-nodemanager-2.2.0:0
	>=app-maven/hadoop-yarn-server-resourcemanager-2.7.2:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/guava-10.0.1:10"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-yarn-server-tests-2.7.2.pom
# org.apache.hadoop:hadoop-common:2.7.2 -> >=app-maven/hadoop-common-2.2.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-common-2.2.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10,commons-logging,hadoop-annotations,hadoop-yarn-api,hadoop-yarn-common,hadoop-yarn-server-common,hadoop-yarn-server-nodemanager,hadoop-yarn-server-resourcemanager"
JAVA_CLASSPATH_EXTRA="hadoop-common"
