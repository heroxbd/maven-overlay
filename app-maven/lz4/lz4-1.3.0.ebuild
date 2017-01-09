# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/lz4-1.3.0.pom --download-uri http://central.maven.org/maven2/net/jpountz/lz4/lz4/1.3.0/lz4-1.3.0-sources.jar --slot 0 --keywords "~amd64" --ebuild lz4-1.3.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java ports and bindings of the LZ4 compression algorithm and the xxHash hashing algorithm"
HOMEPAGE="https://github.com/jpountz/lz4-java"
SRC_URI="http://central.maven.org/maven2/net/jpountz/lz4/lz4/1.3.0/lz4-1.3.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.jpountz.lz4:lz4:1.3.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

