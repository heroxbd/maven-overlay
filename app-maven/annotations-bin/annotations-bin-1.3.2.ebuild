# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/annotations-1.3.2.pom --download-uri http://central.maven.org/maven2/net/sourceforge/findbugs/annotations/1.3.2/annotations-1.3.2.jar --slot 0 --keywords "~amd64" --ebuild annotations-bin-1.3.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Annotation supports the FindBugs tool"
HOMEPAGE="http://findbugs.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/net/sourceforge/findbugs/annotations/1.3.2/annotations-1.3.2.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.sourceforge.findbugs:annotations:1.3.2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

