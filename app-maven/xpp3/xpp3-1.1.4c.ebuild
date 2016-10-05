# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/xpp3-1.1.4c.pom --download-uri http://central.maven.org/maven2/xpp3/xpp3/1.1.4c/xpp3-1.1.4c-sources.jar --slot 0 --keywords "~amd64" --ebuild xpp3-1.1.4c.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="MXP1 is a stable XmlPull parsing engine that is based on ideas from XPP and in particular XPP2 but completely revised and rewritten to take the best advantage of latest JIT JVMs such as Hotspot in JDK 1.4+."
HOMEPAGE="http://www.extreme.indiana.edu/xgws/xsoap/xpp/mxp1/"
SRC_URI="http://central.maven.org/maven2/xpp3/xpp3/1.1.4c/xpp3-1.1.4c-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="xpp3:xpp3:1.1.4c"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

