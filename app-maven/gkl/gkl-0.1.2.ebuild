# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gkl-0.1.2.pom --download-uri http://central.maven.org/maven2/com/intel/gkl/gkl/0.1.2/gkl-0.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild gkl-0.1.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Genomics compute kernels optimized for Intel Architecture"
HOMEPAGE="https://github.com/Intel-HLS/GKL"
SRC_URI="http://central.maven.org/maven2/com/intel/gkl/gkl/0.1.2/gkl-0.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.intel.gkl:gkl:0.1.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gkl-0.1.2.pom
# com.github.samtools:htsjdk:2.4.1-36-g313bf83 -> >=app-maven/htsjdk-2.6.0:0
# commons-io:commons-io:2.4 -> >=dev-java/commons-io-2.4:1
# org.apache.logging.log4j:log4j-api:2.5 -> >=dev-java/log4j-api-2.2:2
# org.apache.logging.log4j:log4j-core:2.5 -> >=dev-java/log4j-api-2.2:2
# org.broadinstitute:gatk-native-bindings:0.0.3 -> >=app-maven/gatk-native-bindings-0.0.3:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gkl-0.1.2.pom
CDEPEND="
	>=app-maven/gatk-native-bindings-0.0.3:0
	>=app-maven/htsjdk-2.6.0:0
	>=dev-java/commons-io-2.4:1
	>=dev-java/log4j-api-2.2:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="htsjdk,commons-io-1,log4j-api-2,log4j-api-2,gatk-native-bindings"
