# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-common_2.10-1.6.1.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-network-common_2.10/1.6.1/spark-network-common_2.10-1.6.1-sources.jar --slot 2.10 --keywords "~amd64" --ebuild spark-network-common-1.6.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-network-common_2.10/1.6.1/spark-network-common_2.10-1.6.1-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-network-common_2.10:1.6.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-common_2.10-1.6.1.pom
# com.google.code.findbugs:jsr305:1.3.9 -> >=app-maven/jsr305-bin-1.3.9:0
# io.netty:netty-all:4.0.29.Final -> >=app-maven/netty-all-4.0.29:0
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-common_2.10-1.6.1.pom
CDEPEND="
	>=app-maven/jsr305-bin-1.3.9:0
	>=app-maven/netty-all-4.0.29:0
	>=app-maven/unused-1.0.0:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-common_2.10-1.6.1.pom
# org.slf4j:slf4j-api:1.7.10 -> >=dev-java/slf4j-log4j12-1.7.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/slf4j-log4j12-1.7.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr305-bin,netty-all,unused"
JAVA_CLASSPATH_EXTRA="slf4j-log4j12"
