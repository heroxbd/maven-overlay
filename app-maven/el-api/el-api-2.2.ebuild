# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/el-api-2.2.pom --download-uri http://central.maven.org/maven2/javax/el/el-api/2.2/el-api-2.2-sources.jar --slot 0 --keywords "~amd64" --ebuild el-api-2.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/javax/el/el-api/2.2/el-api-2.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.el:el-api:2.2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

