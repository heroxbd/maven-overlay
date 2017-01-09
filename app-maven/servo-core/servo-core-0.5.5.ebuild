# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/servo-core-0.5.5.pom --download-uri http://central.maven.org/maven2/com/netflix/servo/servo-core/0.5.5/servo-core-0.5.5-sources.jar --slot 0 --keywords "~amd64" --ebuild servo-core-0.5.5.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="servo-core developed by Netflix"
HOMEPAGE="https://github.com/Netflix/OSS-netflix-servo-release"
SRC_URI="http://central.maven.org/maven2/com/netflix/servo/servo-core/0.5.5/servo-core-0.5.5-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.netflix.servo:servo-core:0.5.5"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/servo-core-0.5.5.pom
# com.google.code.findbugs:annotations:2.0.0 -> >=app-maven/annotations-bin-2.0.1:0
# com.google.guava:guava:14.0.1 -> >=dev-java/guava-10.0.1:10
# org.slf4j:slf4j-api:1.6.3 -> >=dev-java/slf4j-nop-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/servo-core-0.5.5.pom
CDEPEND="
	>=app-maven/annotations-bin-2.0.1:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/slf4j-nop-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="annotations-bin,guava-10,slf4j-nop"
