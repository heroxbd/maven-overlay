# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/annotations-2.0.1.pom --download-uri http://central.maven.org/maven2/com/google/code/findbugs/annotations/2.0.1/annotations-2.0.1.jar --slot 0 --keywords "~amd64" --ebuild annotations-bin-2.0.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Annotation supports the FindBugs tool"
HOMEPAGE="http://findbugs.sourceforge.net/"
SRC_URI="http://central.maven.org/maven2/com/google/code/findbugs/annotations/2.0.1/annotations-2.0.1.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.code.findbugs:annotations:2.0.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

