# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-column-1.7.0.pom --download-uri http://central.maven.org/maven2/org/apache/parquet/parquet-column/1.7.0/parquet-column-1.7.0-sources.jar --slot 0 --keywords "~amd64" --ebuild parquet-column-1.7.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Parquet is a columnar storage format that supports nested data. This provides the java implementation."
HOMEPAGE="https://parquet.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/parquet/parquet-column/1.7.0/parquet-column-1.7.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.parquet:parquet-column:1.7.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-column-1.7.0.pom
# commons-codec:commons-codec:1.5 -> >=dev-java/commons-codec-1.7:0
# org.apache.parquet:parquet-common:1.7.0 -> >=app-maven/parquet-common-1.7.0:0
# org.apache.parquet:parquet-encoding:1.7.0 -> >=app-maven/parquet-encoding-1.7.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-column-1.7.0.pom
CDEPEND="
	>=app-maven/parquet-common-1.7.0:0
	>=app-maven/parquet-encoding-1.7.0:0
	>=dev-java/commons-codec-1.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.6"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-codec,parquet-common,parquet-encoding"
