# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/cssparser-0.9.9.pom --download-uri http://central.maven.org/maven2/net/sourceforge/cssparser/cssparser/0.9.9/cssparser-0.9.9-sources.jar --slot 0 --keywords "~amd64" --ebuild cssparser-0.9.9.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A CSS parser which implements SAC (the Simple API for CSS)."
HOMEPAGE="http://cssparser.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/net/sourceforge/cssparser/cssparser/0.9.9/cssparser-0.9.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="net.sourceforge.cssparser:cssparser:0.9.9"

# Common dependencies
# POM: ../poms/cssparser-0.9.9.pom
# org.w3c.css:sac:1.3 -> >=app-maven/sac-1.3:0
# POM: ../poms/cssparser-0.9.9.pom
CDEPEND="
	>=app-maven/sac-1.3:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="sac"
