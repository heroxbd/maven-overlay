# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-tasks-0.6.pom --download-uri http://central.maven.org/maven2/org/apache/rat/apache-rat-tasks/0.6/apache-rat-tasks-0.6-sources.jar --slot 0 --keywords "~amd64" --ebuild apache-rat-tasks-0.6.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Ant tasks for running RAT"
HOMEPAGE="http://incubator.apache.org/rat/apache-rat-tasks"
SRC_URI="http://central.maven.org/maven2/org/apache/rat/apache-rat-tasks/0.6/apache-rat-tasks-0.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.rat:apache-rat-tasks:0.6"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-tasks-0.6.pom
# org.apache.rat:apache-rat-core:0.6 -> >=app-maven/apache-rat-core-0.6:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-tasks-0.6.pom
CDEPEND="
	>=app-maven/apache-rat-core-0.6:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-tasks-0.6.pom
# org.apache.ant:ant:1.7.1 -> >=dev-java/ant-core-1.9.2:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=dev-java/ant-core-1.9.2:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="apache-rat-core"
JAVA_CLASSPATH_EXTRA="ant-core"
