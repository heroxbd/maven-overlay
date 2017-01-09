# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/akka-slf4j_2.10-2.3.11.pom --download-uri http://central.maven.org/maven2/com/typesafe/akka/akka-slf4j_2.10/2.3.11/akka-slf4j_2.10-2.3.11-sources.jar --slot 2.10 --keywords "~amd64" --ebuild akka-slf4j-2.3.11.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="akka-slf4j"
HOMEPAGE="http://akka.io/"
SRC_URI="http://central.maven.org/maven2/com/typesafe/akka/akka-slf4j_2.10/2.3.11/akka-slf4j_2.10-2.3.11-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.typesafe.akka:akka-slf4j_2.10:2.3.11"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/akka-slf4j_2.10-2.3.11.pom
# com.typesafe.akka:akka-actor_2.10:2.3.11 -> >=app-maven/akka-actor-2.3.11:2.10
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# org.slf4j:slf4j-api:1.7.5 -> >=dev-java/slf4j-log4j12-1.7.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/akka-slf4j_2.10-2.3.11.pom
CDEPEND="
	>=app-maven/akka-actor-2.3.11:2.10
	>=app-maven/scala-library-2.11.8:0
	>=dev-java/slf4j-log4j12-1.7.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="akka-actor-2.10,scala-library,slf4j-log4j12"
