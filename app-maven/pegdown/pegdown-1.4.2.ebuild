# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pegdown-1.4.2.pom --download-uri http://central.maven.org/maven2/org/pegdown/pegdown/1.4.2/pegdown-1.4.2-sources.jar --slot 0 --keywords "~amd64" --ebuild pegdown-1.4.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A Java 1.5+ library providing a clean and lightweight markdown processor"
HOMEPAGE="http://pegdown.org"
SRC_URI="http://central.maven.org/maven2/org/pegdown/pegdown/1.4.2/pegdown-1.4.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.pegdown:pegdown:1.4.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pegdown-1.4.2.pom
# org.parboiled:parboiled-java:1.1.6 -> >=app-maven/parboiled-java-1.1.6:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/pegdown-1.4.2.pom
CDEPEND="
	>=app-maven/parboiled-java-1.1.6:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="parboiled-java"
