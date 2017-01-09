# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-annotations-2.2.0.pom --download-uri http://central.maven.org/maven2/org/apache/hadoop/hadoop-annotations/2.2.0/hadoop-annotations-2.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-annotations-2.2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Hadoop Annotations"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/apache/hadoop/hadoop-annotations/2.2.0/hadoop-annotations-2.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.hadoop:hadoop-annotations:2.2.0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-annotations-2.2.0.pom
# jdiff:jdiff:1.0.9 -> >=app-maven/jdiff-bin-1.0.9:0
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/jdiff-bin-1.0.9:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="jdiff-bin"
