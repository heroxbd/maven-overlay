# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htsjdk-2.6.0.pom --download-uri http://central.maven.org/maven2/com/github/samtools/htsjdk/2.6.0/htsjdk-2.6.0-sources.jar --slot 0 --keywords "~amd64" --ebuild htsjdk-2.6.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A Java API for high-throughput sequencing data (HTS) formats"
HOMEPAGE="http://samtools.github.io/htsjdk/"
SRC_URI="http://central.maven.org/maven2/com/github/samtools/htsjdk/2.6.0/htsjdk-2.6.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.github.samtools:htsjdk:2.6.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htsjdk-2.6.0.pom
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# gov.nih.nlm.ncbi:ngs-java:1.2.4 -> >=app-maven/ngs-java-1.2.4:0
# org.apache.commons:commons-compress:1.4.1 -> >=app-maven/commons-compress-1.4.1:0
# org.apache.commons:commons-jexl:2.1.1 -> >=app-maven/commons-jexl-2.1.1:0
# org.tukaani:xz:1.5 -> >=app-maven/xz-1.0:0
# org.xerial.snappy:snappy-java:1.0.3-rc3 -> >=dev-java/snappy-1.0.3_rc3:1.0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htsjdk-2.6.0.pom
CDEPEND="
	>=app-maven/commons-compress-1.4.1:0
	>=app-maven/commons-jexl-2.1.1:0
	>=app-maven/ngs-java-1.2.4:0
	>=app-maven/xz-1.0:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/snappy-1.0.3_rc3:1.0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-logging,ngs-java,commons-compress,commons-jexl,xz,snappy-1.0"
