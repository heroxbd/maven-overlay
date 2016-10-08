# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/chill-java-0.8.0.pom --download-uri http://central.maven.org/maven2/com/twitter/chill-java/0.8.0/chill-java-0.8.0-sources.jar --slot 0 --keywords "~amd64" --ebuild chill-java-0.8.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="chill-java"
HOMEPAGE="https://github.com/twitter/chill"
SRC_URI="http://central.maven.org/maven2/com/twitter/chill-java/0.8.0/chill-java-0.8.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.twitter:chill-java:0.8.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/chill-java-0.8.0.pom
# com.esotericsoftware:kryo-shaded:3.0.3 -> >=app-maven/kryo-shaded-3.0.3:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/chill-java-0.8.0.pom
CDEPEND="
	>=app-maven/kryo-shaded-3.0.3:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="kryo-shaded"
