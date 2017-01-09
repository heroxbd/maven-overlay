# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kryo-3.0.3.pom --download-uri http://central.maven.org/maven2/com/esotericsoftware/kryo/3.0.3/kryo-3.0.3-sources.jar --slot 0 --keywords "~amd64" --ebuild kryo-3.0.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Fast, efficient Java serialization. This is the \"main\" kryo artifact, with a regular dependency on reflectasm."
HOMEPAGE="https://github.com/EsotericSoftware/kryo/kryo"
SRC_URI="http://central.maven.org/maven2/com/esotericsoftware/kryo/3.0.3/kryo-3.0.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.esotericsoftware:kryo:3.0.3"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kryo-3.0.3.pom
# com.esotericsoftware:minlog:1.3.0 -> >=app-maven/minlog-1.3.0:0
# com.esotericsoftware:reflectasm:1.10.1 -> >=dev-java/reflectasm-1.11.0:0
# org.objenesis:objenesis:2.1 -> >=app-maven/objenesis-2.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kryo-3.0.3.pom
CDEPEND="
	>=app-maven/minlog-1.3.0:0
	>=app-maven/objenesis-2.1:0
	>=dev-java/reflectasm-1.11.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="minlog,reflectasm,objenesis"
