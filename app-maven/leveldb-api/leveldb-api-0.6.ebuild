# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/leveldb-api-0.6.pom --download-uri http://central.maven.org/maven2/org/iq80/leveldb/leveldb-api/0.6/leveldb-api-0.6-sources.jar --slot 0 --keywords "~amd64" --ebuild leveldb-api-0.6.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="High level Java API for LevelDB"
HOMEPAGE="http://github.com/dain/leveldb/leveldb-api"
SRC_URI="http://central.maven.org/maven2/org/iq80/leveldb/leveldb-api/0.6/leveldb-api-0.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.iq80.leveldb:leveldb-api:0.6"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

