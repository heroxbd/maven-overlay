# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-core-0.6.pom --download-uri http://central.maven.org/maven2/org/apache/rat/apache-rat-core/0.6/apache-rat-core-0.6-sources.jar --slot 0 --keywords "~amd64" --ebuild apache-rat-core-0.6.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The core functionality of RAT, shared by the Ant tasks,
    and the Maven plugin."
HOMEPAGE="http://incubator.apache.org/rat/apache-rat-core"
SRC_URI="http://central.maven.org/maven2/org/apache/rat/apache-rat-core/0.6/apache-rat-core-0.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.rat:apache-rat-core:0.6"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-core-0.6.pom
# commons-cli:commons-cli:1.1 -> >=dev-java/commons-cli-1.3.1:1
# commons-collections:commons-collections:3.2 -> >=dev-java/commons-collections-3.2.1:0
# commons-lang:commons-lang:2.1 -> >=dev-java/commons-lang-2.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/apache-rat-core-0.6.pom
CDEPEND="
	>=dev-java/commons-cli-1.3.1:1
	>=dev-java/commons-collections-3.2.1:0
	>=dev-java/commons-lang-2.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-cli-1,commons-collections,commons-lang"
