# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hpack-0.10.1.pom --download-uri http://central.maven.org/maven2/com/twitter/hpack/0.10.1/hpack-0.10.1-sources.jar --slot 0 --keywords "~amd64" --ebuild hpack-0.10.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Header Compression for HTTP/2"
HOMEPAGE="http://github.com/twitter/hpack"
SRC_URI="http://central.maven.org/maven2/com/twitter/hpack/0.10.1/hpack-0.10.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.twitter:hpack:0.10.1"

DEPEND="
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.6"

S="${WORKDIR}"

