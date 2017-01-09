# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/okhttp-2.4.0.pom --download-uri http://central.maven.org/maven2/com/squareup/okhttp/okhttp/2.4.0/okhttp-2.4.0-sources.jar --slot 0 --keywords "~amd64" --ebuild okhttp-2.4.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="An HTTP+SPDY client for Android and Java applications"
HOMEPAGE="https://github.com/square/okhttp/okhttp"
SRC_URI="http://central.maven.org/maven2/com/squareup/okhttp/okhttp/2.4.0/okhttp-2.4.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.squareup.okhttp:okhttp:2.4.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/okhttp-2.4.0.pom
# com.squareup.okio:okio:1.4.0 -> >=dev-java/okio-1.11.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/okhttp-2.4.0.pom
CDEPEND="
	>=dev-java/okio-1.11.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="okio"
