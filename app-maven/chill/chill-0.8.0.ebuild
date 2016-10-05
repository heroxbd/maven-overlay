# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/chill_2.11-0.8.0.pom --download-uri http://central.maven.org/maven2/com/twitter/chill_2.11/0.8.0/chill_2.11-0.8.0-sources.jar --slot 2.11 --keywords "~amd64" --ebuild chill-0.8.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="chill"
HOMEPAGE="https://github.com/twitter/chill"
SRC_URI="http://central.maven.org/maven2/com/twitter/chill_2.11/0.8.0/chill_2.11-0.8.0-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.twitter:chill_2.11:0.8.0"

# Common dependencies
# POM: ../poms/chill_2.11-0.8.0.pom
# com.esotericsoftware:kryo-shaded:3.0.3 -> >=app-maven/kryo-shaded-3.0.3:0
# com.twitter:chill-java:0.8.0 -> >=app-maven/chill-java-0.8.0:0
# org.scala-lang:scala-library:2.11.7 -> >=app-maven/scala-library-2.11.7:0
# POM: ../poms/chill_2.11-0.8.0.pom
CDEPEND="
	>=app-maven/chill-java-0.8.0:0
	>=app-maven/kryo-shaded-3.0.3:0
	>=app-maven/scala-library-2.11.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="kryo-shaded,chill-java,scala-library"
