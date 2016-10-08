# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hamcrest-all-1.3.pom --download-uri http://central.maven.org/maven2/org/hamcrest/hamcrest-all/1.3/hamcrest-all-1.3-sources.jar --slot 0 --keywords "~amd64" --ebuild hamcrest-all-1.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A self-contained hamcrest jar containing all of the sub-modules in a single artifact."
HOMEPAGE="https://github.com/hamcrest/JavaHamcrest/hamcrest-all"
SRC_URI="http://central.maven.org/maven2/org/hamcrest/hamcrest-all/1.3/hamcrest-all-1.3-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.hamcrest:hamcrest-all:1.3"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

