# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/json4s-core_2.10-3.2.10.pom --download-uri http://central.maven.org/maven2/org/json4s/json4s-core_2.10/3.2.10/json4s-core_2.10-3.2.10-sources.jar --slot 2.10 --keywords "~amd64" --ebuild json4s-core-3.2.10.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="json4s-core"
HOMEPAGE="https://github.com/json4s/json4s"
SRC_URI="http://central.maven.org/maven2/org/json4s/json4s-core_2.10/3.2.10/json4s-core_2.10-3.2.10-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.json4s:json4s-core_2.10:3.2.10"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/json4s-core_2.10-3.2.10.pom
# com.thoughtworks.paranamer:paranamer:2.6 -> >=app-maven/paranamer-2.6:0
# org.json4s:json4s-ast_2.10:3.2.10 -> >=app-maven/json4s-ast-3.2.10:2.10
# org.scala-lang:scala-library:2.10.0 -> >=app-maven/scala-library-2.11.8:0
# org.scala-lang:scalap:2.10.0 -> >=app-maven/scalap-2.11.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/json4s-core_2.10-3.2.10.pom
CDEPEND="
	>=app-maven/json4s-ast-3.2.10:2.10
	>=app-maven/paranamer-2.6:0
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/scalap-2.11.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="paranamer,json4s-ast-2.10,scala-library,scalap"
