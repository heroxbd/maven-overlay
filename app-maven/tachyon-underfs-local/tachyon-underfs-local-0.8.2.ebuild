# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tachyon-underfs-local-0.8.2.pom --download-uri http://central.maven.org/maven2/org/tachyonproject/tachyon-underfs-local/0.8.2/tachyon-underfs-local-0.8.2-sources.jar --slot 0 --keywords "~amd64" --ebuild tachyon-underfs-local-0.8.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Under File System implementation that uses local file system"
HOMEPAGE="http://tachyon-project.org/tachyon-underfs/tachyon-underfs-local/"
SRC_URI="http://central.maven.org/maven2/org/tachyonproject/tachyon-underfs-local/0.8.2/tachyon-underfs-local-0.8.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.tachyonproject:tachyon-underfs-local:0.8.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tachyon-underfs-local-0.8.2.pom
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
# org.slf4j:slf4j-api:1.7.2 -> >=dev-java/slf4j-log4j12-1.7.7:0
# org.tachyonproject:tachyon-common:0.8.2 -> >=app-maven/tachyon-common-0.8.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tachyon-underfs-local-0.8.2.pom
CDEPEND="
	>=app-maven/tachyon-common-0.8.2:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10,slf4j-log4j12,tachyon-common"
