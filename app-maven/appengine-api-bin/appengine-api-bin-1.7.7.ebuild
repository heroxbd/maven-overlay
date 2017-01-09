# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/appengine-api-1.0-sdk-1.7.7.pom --download-uri http://central.maven.org/maven2/com/google/appengine/appengine-api-1.0-sdk/1.7.7/appengine-api-1.0-sdk-1.7.7.jar --slot 1.0-sdk --keywords "~amd64" --ebuild appengine-api-bin-1.7.7.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="http://code.google.com/appengine/appengine-api-1.0-sdk/"
SRC_URI="http://central.maven.org/maven2/com/google/appengine/appengine-api-1.0-sdk/1.7.7/appengine-api-1.0-sdk-1.7.7.jar"
LICENSE=""
SLOT="1.0-sdk"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.appengine:appengine-api-1.0-sdk:1.7.7"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

