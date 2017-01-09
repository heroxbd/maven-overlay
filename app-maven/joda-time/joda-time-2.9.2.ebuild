# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/joda-time-2.9.2.pom --download-uri http://central.maven.org/maven2/joda-time/joda-time/2.9.2/joda-time-2.9.2-sources.jar --slot 0 --keywords "~amd64" --ebuild joda-time-2.9.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Date and time library to replace JDK date handling"
HOMEPAGE="http://www.joda.org/joda-time/"
SRC_URI="http://central.maven.org/maven2/joda-time/joda-time/2.9.2/joda-time-2.9.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="joda-time:joda-time:2.9.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/joda-time-2.9.2.pom
# org.joda:joda-convert:1.2 -> >=dev-java/joda-convert-1.3.1:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/joda-time-2.9.2.pom
CDEPEND="
	>=dev-java/joda-convert-1.3.1:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.5
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.5"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="joda-convert"
