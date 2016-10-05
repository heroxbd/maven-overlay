# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/RoaringBitmap-0.5.11.pom --download-uri http://central.maven.org/maven2/org/roaringbitmap/RoaringBitmap/0.5.11/RoaringBitmap-0.5.11-sources.jar --slot 0 --keywords "~amd64" --ebuild RoaringBitmap-0.5.11.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Roaring bitmaps are compressed bitmaps (also called bitsets) which tend to outperform
     conventional compressed bitmaps such as WAH or Concise."
HOMEPAGE="https://github.com/lemire/RoaringBitmap"
SRC_URI="http://central.maven.org/maven2/org/roaringbitmap/RoaringBitmap/0.5.11/RoaringBitmap-0.5.11-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.roaringbitmap:RoaringBitmap:0.5.11"

DEPEND="
	>=virtual/jdk-1.6
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.6"

S="${WORKDIR}"

