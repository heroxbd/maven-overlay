# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldbjni-1.8.pom --download-uri http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni/1.8/leveldbjni-1.8-sources.jar --slot 0 --keywords "~amd64" --ebuild leveldbjni-1.8.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="leveldbjni is a jni library for acessing leveldb."
HOMEPAGE="http://leveldbjni.fusesource.org/leveldbjni"
SRC_URI="http://central.maven.org/maven2/org/fusesource/leveldbjni/leveldbjni/1.8/leveldbjni-1.8-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.fusesource.leveldbjni:leveldbjni:1.8"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldbjni-1.8.pom
# org.fusesource.hawtjni:hawtjni-runtime:1.9 -> >=dev-java/maven-hawtjni-plugin-1.11:0
# org.iq80.leveldb:leveldb-api:0.6 -> >=app-maven/leveldb-api-0.6:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldbjni-1.8.pom
CDEPEND="
	>=app-maven/leveldb-api-0.6:0
	>=dev-java/maven-hawtjni-plugin-1.11:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="maven-hawtjni-plugin,leveldb-api"
