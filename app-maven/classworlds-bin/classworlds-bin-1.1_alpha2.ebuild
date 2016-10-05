# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/classworlds-1.1-alpha-2.pom --download-uri http://central.maven.org/maven2/classworlds/classworlds/1.1-alpha-2/classworlds-1.1-alpha-2.jar --slot 0 --keywords "~amd64" --ebuild classworlds-bin-1.1_alpha2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION=""
HOMEPAGE="http://classworlds.codehaus.org/"
SRC_URI="http://central.maven.org/maven2/classworlds/classworlds/1.1-alpha-2/classworlds-1.1-alpha-2.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="classworlds:classworlds:1.1-alpha-2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

