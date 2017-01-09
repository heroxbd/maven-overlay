# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htsjdk-1.118.pom --download-uri http://central.maven.org/maven2/org/seqdoop/htsjdk/1.118/htsjdk-1.118-sources.jar --slot 0 --keywords "~amd64" --ebuild htsjdk-1.118.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A Java API for high-throughput sequencing data (HTS) formats."
HOMEPAGE="https://github.com/samtools/htsjdk/"
SRC_URI="http://central.maven.org/maven2/org/seqdoop/htsjdk/1.118/htsjdk-1.118-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seqdoop:htsjdk:1.118"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htsjdk-1.118.pom
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# org.apache.ant:ant:1.8.2 -> >=dev-java/ant-core-1.9.2:0
# org.apache.bcel:bcel:5.2 -> >=dev-java/bcel-6.0_rc3:0
# org.apache.commons:commons-jexl:2.1.1 -> >=app-maven/commons-jexl-2.1.1:0
# org.seqdoop:cofoja:1.1-r150 -> >=app-maven/cofoja-1.1_p150:0
# org.testng:testng:6.8.8 -> >=dev-java/testng-6.9.10:0
# org.xerial.snappy:snappy-java:1.0.3-rc3 -> >=dev-java/snappy-1.0.3_rc3:1.0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htsjdk-1.118.pom
CDEPEND="
	>=app-maven/cofoja-1.1_p150:0
	>=app-maven/commons-jexl-2.1.1:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/bcel-6.0_rc3:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/snappy-1.0.3_rc3:1.0
	>=dev-java/testng-6.9.10:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-logging,ant-core,bcel,commons-jexl,cofoja,testng,snappy-1.0"
