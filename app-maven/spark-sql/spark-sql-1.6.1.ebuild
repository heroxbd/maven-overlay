# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-sql_2.10-1.6.1.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-sql_2.10/1.6.1/spark-sql_2.10-1.6.1-sources.jar --slot 2.10 --keywords "~amd64" --ebuild spark-sql-1.6.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-sql_2.10/1.6.1/spark-sql_2.10-1.6.1-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-sql_2.10:1.6.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-sql_2.10-1.6.1.pom
# com.fasterxml.jackson.core:jackson-databind:2.4.4 -> >=dev-java/jackson-databind-2.8.5:2
# org.apache.parquet:parquet-column:1.7.0 -> >=app-maven/parquet-column-1.7.0:0
# org.apache.parquet:parquet-hadoop:1.7.0 -> >=app-maven/parquet-hadoop-1.7.0:0
# org.apache.spark:spark-catalyst_2.10:1.6.1 -> >=app-maven/spark-catalyst-1.6.1:2.10
# org.apache.spark:spark-core_2.10:1.6.1 -> >=app-maven/spark-core-1.6.1:2.10
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-sql_2.10-1.6.1.pom
CDEPEND="
	>=app-maven/parquet-column-1.7.0:0
	>=app-maven/parquet-hadoop-1.7.0:0
	>=app-maven/spark-catalyst-1.6.1:2.10
	>=app-maven/spark-core-1.6.1:2.10
	>=app-maven/unused-1.0.0:0
	>=dev-java/jackson-databind-2.8.5:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jackson-databind-2,parquet-column,parquet-hadoop,spark-catalyst-2.10,spark-core-2.10,unused"
