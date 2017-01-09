# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/hsqldb-1.8.0.10.pom --download-uri http://central.maven.org/maven2/hsqldb/hsqldb/1.8.0.10/hsqldb-1.8.0.10.jar --slot 0 --keywords "~amd64" --ebuild hsqldb-bin-1.8.0.10.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Lightweight 100% Java SQL Database Engine"
HOMEPAGE="http://hsqldb.org/"
SRC_URI="http://central.maven.org/maven2/hsqldb/hsqldb/1.8.0.10/hsqldb-1.8.0.10.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="hsqldb:hsqldb:1.8.0.10"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

