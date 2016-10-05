# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/nekohtml-1.9.18.pom --download-uri http://central.maven.org/maven2/net/sourceforge/nekohtml/nekohtml/1.9.18/nekohtml-1.9.18-sources.jar --slot 0 --keywords "~amd64" --ebuild nekohtml-1.9.18.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="An HTML parser and tag balancer."
HOMEPAGE="http://nekohtml.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/net/sourceforge/nekohtml/nekohtml/1.9.18/nekohtml-1.9.18-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="net.sourceforge.nekohtml:nekohtml:1.9.18"

# Common dependencies
# POM: ../poms/nekohtml-1.9.18.pom
# xerces:xercesImpl:2.10.0 -> >=dev-java/xerces-2.11.0:2
# POM: ../poms/nekohtml-1.9.18.pom
CDEPEND="
	>=dev-java/xerces-2.11.0:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="xerces-2"
