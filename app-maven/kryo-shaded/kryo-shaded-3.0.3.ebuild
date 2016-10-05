# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/kryo-shaded-3.0.3.pom --download-uri http://central.maven.org/maven2/com/esotericsoftware/kryo-shaded/3.0.3/kryo-shaded-3.0.3-sources.jar --slot 0 --keywords "~amd64" --ebuild kryo-shaded-3.0.3.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Fast, efficient Java serialization. This contains the shaded reflectasm jar to prevent conflicts with other versions of asm."
HOMEPAGE="https://github.com/EsotericSoftware/kryo/kryo-shaded"
SRC_URI="http://central.maven.org/maven2/com/esotericsoftware/kryo-shaded/3.0.3/kryo-shaded-3.0.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.esotericsoftware:kryo-shaded:3.0.3"

# Common dependencies
# POM: ../poms/kryo-shaded-3.0.3.pom
# com.esotericsoftware:minlog:1.3.0 -> >=app-maven/minlog-1.3.0:0
# org.objenesis:objenesis:2.1 -> >=app-maven/objenesis-2.1:0
# POM: ../poms/kryo-shaded-3.0.3.pom
CDEPEND="
	>=app-maven/minlog-1.3.0:0
	>=app-maven/objenesis-2.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="minlog,objenesis"
