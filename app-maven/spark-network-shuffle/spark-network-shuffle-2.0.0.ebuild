# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-shuffle_2.11-2.0.0.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-network-shuffle_2.11/2.0.0/spark-network-shuffle_2.11-2.0.0-sources.jar --slot 2.11 --keywords "~amd64" --ebuild spark-network-shuffle-2.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-network-shuffle_2.11/2.0.0/spark-network-shuffle_2.11-2.0.0-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-network-shuffle_2.11:2.0.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-shuffle_2.11-2.0.0.pom
# com.fasterxml.jackson.core:jackson-annotations:2.6.5 -> >=dev-java/jackson-annotations-2.8.5:2
# com.fasterxml.jackson.core:jackson-databind:2.6.5 -> >=dev-java/jackson-databind-2.8.5:2
# org.apache.spark:spark-network-common_2.11:2.0.0 -> >=app-maven/spark-network-common-2.0.0:2.11
# org.apache.spark:spark-tags_2.11:2.0.0 -> >=app-maven/spark-tags-2.0.0:2.11
# org.fusesource.leveldbjni:leveldbjni-all:1.8 -> >=app-maven/leveldbjni-all-1.8:0
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-shuffle_2.11-2.0.0.pom
CDEPEND="
	>=app-maven/leveldbjni-all-1.8:0
	>=app-maven/spark-network-common-2.0.0:2.11
	>=app-maven/spark-tags-2.0.0:2.11
	>=app-maven/unused-1.0.0:0
	>=dev-java/jackson-annotations-2.8.5:2
	>=dev-java/jackson-databind-2.8.5:2"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-network-shuffle_2.11-2.0.0.pom
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
# org.slf4j:slf4j-api:1.7.16 -> >=dev-java/slf4j-log4j12-1.7.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/guava-10.0.1:10
	>=dev-java/slf4j-log4j12-1.7.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-annotations-2,jackson-databind-2,spark-network-common-2.11,spark-tags-2.11,leveldbjni-all,unused"
JAVA_CLASSPATH_EXTRA="guava-10,slf4j-log4j12"
