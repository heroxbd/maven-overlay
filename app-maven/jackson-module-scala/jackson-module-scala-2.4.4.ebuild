# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-module-scala_2.10-2.4.4.pom --download-uri http://central.maven.org/maven2/com/fasterxml/jackson/module/jackson-module-scala_2.10/2.4.4/jackson-module-scala_2.10-2.4.4-sources.jar --slot 2.10 --keywords "~amd64" --ebuild jackson-module-scala-2.4.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="jackson-module-scala"
HOMEPAGE="http://wiki.fasterxml.com/JacksonModuleScala"
SRC_URI="http://central.maven.org/maven2/com/fasterxml/jackson/module/jackson-module-scala_2.10/2.4.4/jackson-module-scala_2.10-2.4.4-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.fasterxml.jackson.module:jackson-module-scala_2.10:2.4.4"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-module-scala_2.10-2.4.4.pom
# com.fasterxml.jackson.core:jackson-annotations:2.4.4 -> >=dev-java/jackson-annotations-2.8.5:2
# com.fasterxml.jackson.core:jackson-core:2.4.4 -> >=dev-java/jackson-2.8.5:2
# com.fasterxml.jackson.core:jackson-databind:2.4.4 -> >=dev-java/jackson-databind-2.8.5:2
# com.google.code.findbugs:jsr305:2.0.1 -> >=app-maven/jsr305-bin-1.3.9:0
# com.google.guava:guava:15.0 -> >=dev-java/guava-10.0.1:10
# com.thoughtworks.paranamer:paranamer:2.6 -> >=app-maven/paranamer-2.6:0
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# org.scala-lang:scala-reflect:2.10.4 -> >=app-maven/scala-reflect-2.11.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jackson-module-scala_2.10-2.4.4.pom
CDEPEND="
	>=app-maven/jsr305-bin-1.3.9:0
	>=app-maven/paranamer-2.6:0
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/scala-reflect-2.11.7:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/jackson-2.8.5:2
	>=dev-java/jackson-annotations-2.8.5:2
	>=dev-java/jackson-databind-2.8.5:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-annotations-2,jackson-2,jackson-databind-2,jsr305-bin,guava-10,paranamer,scala-library,scala-reflect"
