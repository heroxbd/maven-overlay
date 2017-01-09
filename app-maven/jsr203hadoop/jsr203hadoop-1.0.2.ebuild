# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsr203hadoop-1.0.2.pom --download-uri http://central.maven.org/maven2/com/github/jsr203hadoop/jsr203hadoop/1.0.2/jsr203hadoop-1.0.2-sources.jar --slot 0 --keywords "~amd64" --ebuild jsr203hadoop-1.0.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A Java NIO file system provider for HDFS"
HOMEPAGE="https://github.com/damiencarol/jsr203-hadoop"
SRC_URI="http://central.maven.org/maven2/com/github/jsr203hadoop/jsr203hadoop/1.0.2/jsr203hadoop-1.0.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.github.jsr203hadoop:jsr203hadoop:1.0.2"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsr203hadoop-1.0.2.pom
# org.apache.hadoop:hadoop-common:2.7.2 -> >=app-maven/hadoop-common-2.2.0:0
# org.apache.hadoop:hadoop-hdfs:2.7.2 -> >=app-maven/hadoop-hdfs-2.2.0:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-common-2.2.0:0
	>=app-maven/hadoop-hdfs-2.2.0:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="hadoop-common,hadoop-hdfs"
