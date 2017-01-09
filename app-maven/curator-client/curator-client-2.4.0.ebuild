# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/curator-client-2.4.0.pom --download-uri http://central.maven.org/maven2/org/apache/curator/curator-client/2.4.0/curator-client-2.4.0-sources.jar --slot 0 --keywords "~amd64" --ebuild curator-client-2.4.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Low-level API"
HOMEPAGE="http://curator.apache.org/curator-client"
SRC_URI="http://central.maven.org/maven2/org/apache/curator/curator-client/2.4.0/curator-client-2.4.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.curator:curator-client:2.4.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/curator-client-2.4.0.pom
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
# org.apache.zookeeper:zookeeper:3.4.5 -> >=app-maven/zookeeper-3.4.5:0
# org.slf4j:slf4j-api:1.6.4 -> >=dev-java/slf4j-nop-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/curator-client-2.4.0.pom
CDEPEND="
	>=app-maven/zookeeper-3.4.5:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/slf4j-nop-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10,zookeeper,slf4j-nop"
