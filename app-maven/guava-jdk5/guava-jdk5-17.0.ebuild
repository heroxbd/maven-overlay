# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/guava-jdk5-17.0.pom --download-uri http://central.maven.org/maven2/com/google/guava/guava-jdk5/17.0/guava-jdk5-17.0-sources.jar --slot 0 --keywords "~amd64" --ebuild guava-jdk5-17.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Guava is a suite of core and expanded libraries that include
    utility classes, google's collections, io classes, and much
    much more.

    Guava has only one code dependency - javax.annotation,
    per the JSR-305 spec."
HOMEPAGE="http://code.google.com/p/guava-libraries/guava-jdk5"
SRC_URI="http://central.maven.org/maven2/com/google/guava/guava-jdk5/17.0/guava-jdk5-17.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.guava:guava-jdk5:17.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/guava-jdk5-17.0.pom
# com.google.code.findbugs:jsr305:1.3.9 -> >=app-maven/jsr305-bin-1.3.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/guava-jdk5-17.0.pom
CDEPEND="
	>=app-maven/jsr305-bin-1.3.9:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/guava-jdk5-17.0.pom
# com.google.guava:guava-bootstrap-jdk5:17.0 -> >=app-maven/guava-bootstrap-jdk5-17.0:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/guava-bootstrap-jdk5-17.0:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr305-bin"
JAVA_CLASSPATH_EXTRA="guava-bootstrap-jdk5"
