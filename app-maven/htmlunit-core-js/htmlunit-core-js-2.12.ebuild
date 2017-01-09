# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htmlunit-core-js-2.12.pom --download-uri http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit-core-js/2.12/htmlunit-core-js-2.12-sources.jar --slot 0 --keywords "~amd64" --ebuild htmlunit-core-js-2.12.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="HtmlUnit adaptation of Mozilla Rhino Javascript engine for Java. 
		Changes are documented by a diff (rhinoDiff.txt) contained in the generated jar files."
HOMEPAGE="http://htmlunit.sourceforge.net"
SRC_URI="http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit-core-js/2.12/htmlunit-core-js-2.12-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.sourceforge.htmlunit:htmlunit-core-js:2.12"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

