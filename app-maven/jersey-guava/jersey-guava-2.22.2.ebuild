# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-guava-2.22.2.pom --download-uri http://central.maven.org/maven2/org/glassfish/jersey/bundles/repackaged/jersey-guava/2.22.2/jersey-guava-2.22.2-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-guava-2.22.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey Guava Repackaged"
HOMEPAGE="https://jersey.java.net/project/project/jersey-guava/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/jersey/bundles/repackaged/jersey-guava/2.22.2/jersey-guava-2.22.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.jersey.bundles.repackaged:jersey-guava:2.22.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-guava-2.22.2.pom
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-guava-2.22.2.pom
CDEPEND="
	>=dev-java/guava-10.0.1:10"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-10"
