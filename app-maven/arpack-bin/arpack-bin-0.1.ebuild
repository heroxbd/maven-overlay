# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/arpack_combined_all-0.1.pom --download-uri http://central.maven.org/maven2/net/sourceforge/f2j/arpack_combined_all/0.1/arpack_combined_all-0.1.jar --slot combined_all --keywords "~amd64" --ebuild arpack-bin-0.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Java APIs for the BLAS, LAPACK, and ARPACK Fortran libraries as translated through F2J."
HOMEPAGE="http://f2j.sourceforge.net"
SRC_URI="http://central.maven.org/maven2/net/sourceforge/f2j/arpack_combined_all/0.1/arpack_combined_all-0.1.jar"
LICENSE=""
SLOT="combined_all"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.sourceforge.f2j:arpack_combined_all:0.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

