# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-scala_2.10-1.8.1.pom --download-uri http://central.maven.org/maven2/org/apache/parquet/parquet-scala_2.10/1.8.1/parquet-scala_2.10-1.8.1-sources.jar --slot 2.10 --keywords "~amd64" --ebuild parquet-scala-1.8.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Parquet is a columnar storage format that supports nested data. This provides the java implementation."
HOMEPAGE="https://parquet.apache.org"
SRC_URI="http://central.maven.org/maven2/org/apache/parquet/parquet-scala_2.10/1.8.1/parquet-scala_2.10-1.8.1-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.parquet:parquet-scala_2.10:1.8.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-scala_2.10-1.8.1.pom
# org.apache.parquet:parquet-column:1.8.1 -> >=app-maven/parquet-column-1.7.0:0
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/parquet-scala_2.10-1.8.1.pom
CDEPEND="
	>=app-maven/parquet-column-1.7.0:0
	>=app-maven/scala-library-2.11.8:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.6"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="parquet-column,scala-library"
