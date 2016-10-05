# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jsr250-api-1.0.pom --download-uri http://central.maven.org/maven2/javax/annotation/jsr250-api/1.0/jsr250-api-1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild jsr250-api-1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JSR-250 Reference Implementation by Glassfish"
HOMEPAGE="http://jcp.org/aboutJava/communityprocess/final/jsr250/index.html"
SRC_URI="http://central.maven.org/maven2/javax/annotation/jsr250-api/1.0/jsr250-api-1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.annotation:jsr250-api:1.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

