# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/stream-2.7.0.pom --download-uri http://central.maven.org/maven2/com/clearspring/analytics/stream/2.7.0/stream-2.7.0-sources.jar --slot 0 --keywords "~amd64" --ebuild stream-2.7.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A library for summarizing data in streams for which it is infeasible to store all events"
HOMEPAGE="https://github.com/addthis/stream-lib"
SRC_URI="http://central.maven.org/maven2/com/clearspring/analytics/stream/2.7.0/stream-2.7.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.clearspring.analytics:stream:2.7.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/stream-2.7.0.pom
# it.unimi.dsi:fastutil:6.5.7 -> >=dev-java/fastutil-7.0.10:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/stream-2.7.0.pom
CDEPEND="
	>=dev-java/fastutil-7.0.10:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="fastutil"
