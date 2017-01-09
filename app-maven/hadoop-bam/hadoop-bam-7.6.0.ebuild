# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-bam-7.6.0.pom --download-uri http://central.maven.org/maven2/org/seqdoop/hadoop-bam/7.6.0/hadoop-bam-7.6.0-sources.jar --slot 0 --keywords "~amd64" --ebuild hadoop-bam-7.6.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A Java library for the manipulation of files in common bioinformatics formats using the Hadoop MapReduce framework."
HOMEPAGE="http://sourceforge.net/projects/hadoop-bam/"
SRC_URI="http://central.maven.org/maven2/org/seqdoop/hadoop-bam/7.6.0/hadoop-bam-7.6.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seqdoop:hadoop-bam:7.6.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-bam-7.6.0.pom
# com.github.jsr203hadoop:jsr203hadoop:1.0.1 -> >=app-maven/jsr203hadoop-1.0.2:0
# com.github.samtools:htsjdk:2.5.0 -> >=app-maven/htsjdk-2.6.0:0
# org.apache.hadoop:hadoop-client:2.2.0 -> >=app-maven/hadoop-client-bin-2.2.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hadoop-bam-7.6.0.pom
CDEPEND="
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=app-maven/htsjdk-2.6.0:0
	>=app-maven/jsr203hadoop-1.0.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr203hadoop,htsjdk,hadoop-client-bin"
