# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jtransforms-2.4.0.pom --download-uri http://central.maven.org/maven2/com/github/rwl/jtransforms/2.4.0/jtransforms-2.4.0-sources.jar --slot 0 --keywords "~amd64" --ebuild jtransforms-2.4.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JTransforms is the first, open source, multithreaded FFT library written in pure Java. Benchmark results show better performance than FFTW."
HOMEPAGE="http://sourceforge.net/projects/jtransforms/"
SRC_URI="http://central.maven.org/maven2/com/github/rwl/jtransforms/2.4.0/jtransforms-2.4.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.github.rwl:jtransforms:2.4.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jtransforms-2.4.0.pom
# junit:junit:4.8.2 -> >=dev-java/junit-4.12:4
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jtransforms-2.4.0.pom
CDEPEND="
	>=dev-java/junit-4.12:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="junit-4"
JAVA_TESTING_FRAMEWORK="junit"
