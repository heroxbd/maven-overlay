# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/javax.inject-1.pom --download-uri http://central.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-inject-1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The javax.inject API"
HOMEPAGE="http://code.google.com/p/atinject/"
SRC_URI="http://central.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.inject:javax.inject:1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

