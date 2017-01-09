# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tachyon-client-0.8.2.pom --download-uri http://central.maven.org/maven2/org/tachyonproject/tachyon-client/0.8.2/tachyon-client-0.8.2-sources.jar --slot 0 --keywords "~amd64" --ebuild tachyon-client-0.8.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Distribution of Tachyon client module with shaded packages in jar"
HOMEPAGE="http://tachyon-project.org/tachyon-clients/tachyon-client/"
SRC_URI="http://central.maven.org/maven2/org/tachyonproject/tachyon-client/0.8.2/tachyon-client-0.8.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.tachyonproject:tachyon-client:0.8.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tachyon-client-0.8.2.pom
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
# commons-io:commons-io:2.4 -> >=dev-java/commons-io-2.4:1
# commons-lang:commons-lang:2.4 -> >=dev-java/commons-lang-2.0:0
# org.apache.commons:commons-lang3:3.0 -> >=app-maven/commons-lang3-3.3.2:0
# org.apache.curator:curator-client:2.1.0-incubating -> >=app-maven/curator-client-2.4.0:0
# org.apache.curator:curator-framework:2.1.0-incubating -> >=app-maven/curator-framework-2.4.0:0
# org.apache.curator:curator-recipes:2.1.0-incubating -> >=app-maven/curator-recipes-2.4.0:0
# org.apache.hadoop:hadoop-client:1.0.4 -> >=app-maven/hadoop-client-bin-2.2.0:0
# org.slf4j:slf4j-api:1.7.2 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.tachyonproject:tachyon-underfs-hdfs:0.8.2 -> >=app-maven/tachyon-underfs-hdfs-0.8.2:0
# org.tachyonproject:tachyon-underfs-local:0.8.2 -> >=app-maven/tachyon-underfs-local-0.8.2:0
# org.tachyonproject:tachyon-underfs-s3:0.8.2 -> >=app-maven/tachyon-underfs-s3-0.8.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tachyon-client-0.8.2.pom
CDEPEND="
	>=app-maven/commons-lang3-3.3.2:0
	>=app-maven/curator-client-2.4.0:0
	>=app-maven/curator-framework-2.4.0:0
	>=app-maven/curator-recipes-2.4.0:0
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=app-maven/tachyon-underfs-hdfs-0.8.2:0
	>=app-maven/tachyon-underfs-local-0.8.2:0
	>=app-maven/tachyon-underfs-s3-0.8.2:0
	>=dev-java/commons-io-2.4:1
	>=dev-java/commons-lang-2.0:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10,commons-io-1,commons-lang,commons-lang3,curator-client,curator-framework,curator-recipes,hadoop-client-bin,slf4j-log4j12,tachyon-underfs-hdfs,tachyon-underfs-local,tachyon-underfs-s3"
