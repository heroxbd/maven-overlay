# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/leveldbjni-1.8.pom --download-uri http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni/1.8/leveldbjni-1.8-sources.jar --slot 0 --keywords "~amd64" --ebuild leveldbjni-1.8.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="leveldbjni is a jni library for acessing leveldb."
HOMEPAGE="http://leveldbjni.fusesource.org/leveldbjni"
SRC_URI="http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni/1.8/leveldbjni-1.8-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.fusesource.leveldbjni:leveldbjni:1.8"

# Common dependencies
# POM: ../poms/leveldbjni-1.8.pom
# org.fusesource.hawtjni:hawtjni-runtime:1.9 -> >=dev-java/hawtjni-runtime-1.10:0
# org.iq80.leveldb:leveldb-api:0.6 -> >=app-maven/leveldb-api-0.6:0
# POM: ../poms/leveldbjni-1.8.pom
CDEPEND="
	>=app-maven/leveldb-api-0.6:0
	>=dev-java/hawtjni-runtime-1.10:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="hawtjni-runtime,leveldb-api"
