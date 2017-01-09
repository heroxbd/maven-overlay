# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/compress-lzf-1.0.3.pom --download-uri http://central.maven.org/maven2/com/ning/compress-lzf/1.0.3/compress-lzf-1.0.3-sources.jar --slot 0 --keywords "~amd64" --ebuild compress-lzf-1.0.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Compression codec for LZF encoding for particularly encoding/decoding, with reasonable compression.
Compressor is basic Lempel-Ziv codec, without Huffman (deflate/gzip) or statistical post-encoding.
See \"http://oldhome.schmorp.de/marc/liblzf.html\" for more on original LZF package."
HOMEPAGE="http://github.com/ning/compress"
SRC_URI="http://central.maven.org/maven2/com/ning/compress-lzf/1.0.3/compress-lzf-1.0.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.ning:compress-lzf:1.0.3"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

