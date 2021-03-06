# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-tags_2.11-2.0.0.pom --download-uri http://central.maven.org/maven2/org/apache/spark/spark-tags_2.11/2.0.0/spark-tags_2.11-2.0.0-sources.jar --slot 2.11 --keywords "~amd64" --ebuild spark-tags-2.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Apache Software Foundation provides support for the Apache community of open-source software projects.
    The Apache projects are characterized by a collaborative, consensus based development process, an open and
    pragmatic software license, and a desire to create high quality software that leads the way in its field.
    We consider ourselves not simply a group of projects sharing a server, but rather a community of developers
    and users."
HOMEPAGE="http://spark.apache.org/"
SRC_URI="http://central.maven.org/maven2/org/apache/spark/spark-tags_2.11/2.0.0/spark-tags_2.11-2.0.0-sources.jar"
LICENSE=""
SLOT="2.11"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.spark:spark-tags_2.11:2.0.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-tags_2.11-2.0.0.pom
# org.scalatest:scalatest_2.11:2.2.6 -> >=app-maven/scalatest-2.2.6:2.11
# org.spark-project.spark:unused:1.0.0 -> >=app-maven/unused-1.0.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/spark-tags_2.11-2.0.0.pom
CDEPEND="
	>=app-maven/scalatest-2.2.6:2.11
	>=app-maven/unused-1.0.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="scalatest-2.11,unused"
