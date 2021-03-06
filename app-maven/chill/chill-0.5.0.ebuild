# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/chill_2.10-0.5.0.pom --download-uri http://central.maven.org/maven2/com/twitter/chill_2.10/0.5.0/chill_2.10-0.5.0-sources.jar --slot 2.10 --keywords "~amd64" --ebuild chill-0.5.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="chill"
HOMEPAGE="https://github.com/twitter/chill"
SRC_URI="http://central.maven.org/maven2/com/twitter/chill_2.10/0.5.0/chill_2.10-0.5.0-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.twitter:chill_2.10:0.5.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/chill_2.10-0.5.0.pom
# com.esotericsoftware.kryo:kryo:2.21 -> >=dev-java/kryo-2.24.0:2
# com.twitter:chill-java:0.5.0 -> >=app-maven/chill-java-0.8.0:0
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/chill_2.10-0.5.0.pom
CDEPEND="
	>=app-maven/chill-java-0.8.0:0
	>=app-maven/scala-library-2.11.8:0
	>=dev-java/kryo-2.24.0:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="kryo-2,chill-java,scala-library"
