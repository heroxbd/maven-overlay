# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/ngs-java-1.2.4.pom --download-uri http://central.maven.org/maven2/gov/nih/nlm/ncbi/ngs-java/1.2.4/ngs-java-1.2.4-sources.jar --slot 0 --keywords "~amd64" --ebuild ngs-java-1.2.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="ngs api"
HOMEPAGE="https://github.com/ncbi/ngs"
SRC_URI="http://central.maven.org/maven2/gov/nih/nlm/ncbi/ngs-java/1.2.4/ngs-java-1.2.4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="gov.nih.nlm.ncbi:ngs-java:1.2.4"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

