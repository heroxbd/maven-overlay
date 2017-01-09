# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/management-api-3.0.0-b012.pom --download-uri http://central.maven.org/maven2/org/glassfish/external/management-api/3.0.0-b012/management-api-3.0.0-b012.jar --slot 0 --keywords "~amd64" --ebuild management-api-bin-3.0.0_beta012.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="GlassFish Common APIs"
HOMEPAGE="http://kenai.com/hg/gmbal~gf_common"
SRC_URI="http://central.maven.org/maven2/org/glassfish/external/management-api/3.0.0-b012/management-api-3.0.0-b012.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.external:management-api:3.0.0-b012"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

