# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/akka-actor_2.10-2.3.11.pom --download-uri http://central.maven.org/maven2/com/typesafe/akka/akka-actor_2.10/2.3.11/akka-actor_2.10-2.3.11-sources.jar --slot 2.10 --keywords "~amd64" --ebuild akka-actor-2.3.11.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="akka-actor"
HOMEPAGE="http://akka.io/"
SRC_URI="http://central.maven.org/maven2/com/typesafe/akka/akka-actor_2.10/2.3.11/akka-actor_2.10-2.3.11-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.typesafe.akka:akka-actor_2.10:2.3.11"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/akka-actor_2.10-2.3.11.pom
# com.typesafe:config:1.2.1 -> >=app-maven/config-1.2.1:0
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/akka-actor_2.10-2.3.11.pom
CDEPEND="
	>=app-maven/config-1.2.1:0
	>=app-maven/scala-library-2.11.8:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="config,scala-library"
