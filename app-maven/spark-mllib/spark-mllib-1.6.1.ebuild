# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-mllib_2.10-1.6.1.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-mllib_2.10/1.6.1/spark-mllib_2.10-1.6.1-sources.jar --slot 2.10 --keywords "~amd64" --ebuild spark-mllib-1.6.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-mllib_2.10/1.6.1/spark-mllib_2.10-1.6.1-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-mllib_2.10:1.6.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-mllib_2.10-1.6.1.pom
# org.apache.commons:commons-math3:3.4.1 -> >=app-maven/commons-math3-3.4.1:0
# org.apache.spark:spark-core_2.10:1.6.1 -> >=app-maven/spark-core-1.6.1:2.10
# org.apache.spark:spark-graphx_2.10:1.6.1 -> >=app-maven/spark-graphx-1.6.1:2.10
# org.apache.spark:spark-sql_2.10:1.6.1 -> >=app-maven/spark-sql-1.6.1:2.10
# org.apache.spark:spark-streaming_2.10:1.6.1 -> >=app-maven/spark-streaming-1.6.1:2.10
# org.jpmml:pmml-model:1.1.15 -> >=app-maven/pmml-model-1.1.15:0
# org.scalanlp:breeze_2.10:0.11.2 -> >=app-maven/breeze-0.11.2:2.10
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-mllib_2.10-1.6.1.pom
CDEPEND="
	>=app-maven/breeze-0.11.2:2.10
	>=app-maven/commons-math3-3.4.1:0
	>=app-maven/pmml-model-1.1.15:0
	>=app-maven/spark-core-1.6.1:2.10
	>=app-maven/spark-graphx-1.6.1:2.10
	>=app-maven/spark-sql-1.6.1:2.10
	>=app-maven/spark-streaming-1.6.1:2.10
	>=app-maven/unused-1.0.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-math3,spark-core-2.10,spark-graphx-2.10,spark-sql-2.10,spark-streaming-2.10,pmml-model,breeze-2.10,unused"
