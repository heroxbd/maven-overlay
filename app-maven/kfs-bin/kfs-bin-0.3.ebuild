# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/kfs-0.3.pom --download-uri http://central.maven.org/maven2/net/sf/kosmosfs/kfs/0.3/kfs-0.3.jar --slot 0 --keywords "~amd64" --ebuild kfs-bin-0.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Kosmos distributed file system provides high performance combined with availability and reliability."
HOMEPAGE="http://kosmosfs.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/net/sf/kosmosfs/kfs/0.3/kfs-0.3.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.sf.kosmosfs:kfs:0.3"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

