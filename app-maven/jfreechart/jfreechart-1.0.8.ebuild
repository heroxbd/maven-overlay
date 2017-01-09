# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jfreechart-1.0.8a.pom --download-uri http://central.maven.org/maven2/jfree/jfreechart/1.0.8a/jfreechart-1.0.8a-sources.jar --slot 0 --keywords "~amd64" --ebuild jfreechart-1.0.8.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JFreeChart is a class library, written in Java, for generating charts. Utilising the Java2D APIs, it currently
        supports bar charts, pie charts, line charts, XY-plots and time series plots."
HOMEPAGE="http://www.jfree.org/jfreechart/"
SRC_URI="http://central.maven.org/maven2/jfree/jfreechart/1.0.8a/jfreechart-1.0.8a-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="jfree:jfreechart:1.0.8a"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jfreechart-1.0.8a.pom
# javax.servlet:servlet-api:2.3 -> >=app-maven/servlet-api-2.5:0
# jfree:jcommon:1.0.12 -> >=app-maven/jcommon-1.0.12:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jfreechart-1.0.8a.pom
CDEPEND="
	>=app-maven/jcommon-1.0.12:0
	>=app-maven/servlet-api-2.5:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="servlet-api,jcommon"
