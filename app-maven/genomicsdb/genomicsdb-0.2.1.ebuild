# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/genomicsdb-0.2.1.pom --download-uri http://central.maven.org/maven2/com/intel/genomicsdb/0.2.1/genomicsdb-0.2.1-sources.jar --slot 0 --keywords "~amd64" --ebuild genomicsdb-0.2.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A C++ layer on top of TileDB for storing and querying variants"
HOMEPAGE="https://github.com/Intel-HLS/GenomicsDB"
SRC_URI="http://central.maven.org/maven2/com/intel/genomicsdb/0.2.1/genomicsdb-0.2.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.intel:genomicsdb:0.2.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/genomicsdb-0.2.1.pom
# com.github.samtools:htsjdk:2.4.0 -> >=app-maven/htsjdk-2.6.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/genomicsdb-0.2.1.pom
CDEPEND="
	>=app-maven/htsjdk-2.6.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="htsjdk"
