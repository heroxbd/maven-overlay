# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-unsafe_2.11-2.0.0.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-unsafe_2.11/2.0.0/spark-unsafe_2.11-2.0.0-sources.jar --slot 2.11 --keywords "~amd64" --ebuild spark-unsafe-2.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-unsafe_2.11/2.0.0/spark-unsafe_2.11-2.0.0-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-unsafe_2.11:2.0.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-unsafe_2.11-2.0.0.pom
# com.google.code.findbugs:jsr305:1.3.9 -> >=app-maven/jsr305-bin-1.3.9:0
# com.twitter:chill_2.11:0.8.0 -> >=app-maven/chill-0.8.0:2.11
# org.apache.spark:spark-tags_2.11:2.0.0 -> >=app-maven/spark-tags-2.0.0:2.11
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-unsafe_2.11-2.0.0.pom
CDEPEND="
	>=app-maven/chill-0.8.0:2.11
	>=app-maven/jsr305-bin-1.3.9:0
	>=app-maven/spark-tags-2.0.0:2.11
	>=app-maven/unused-1.0.0:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-unsafe_2.11-2.0.0.pom
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

JAVA_GENTOO_CLASSPATH="jsr305-bin,chill-2.11,spark-tags-2.11,unused"
JAVA_CLASSPATH_EXTRA="guava-10,slf4j-log4j12"
