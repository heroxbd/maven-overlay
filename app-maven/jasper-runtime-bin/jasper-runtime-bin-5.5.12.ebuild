# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jasper-runtime-5.5.12.pom --download-uri http://central.maven.org/maven2/tomcat/jasper-runtime/5.5.12/jasper-runtime-5.5.12.jar --slot 0 --keywords "~amd64" --ebuild jasper-runtime-bin-5.5.12.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/tomcat/jasper-runtime/5.5.12/jasper-runtime-5.5.12.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="tomcat:jasper-runtime:5.5.12"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

