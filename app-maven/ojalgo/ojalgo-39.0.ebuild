# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/ojalgo-39.0.pom --download-uri http://central.maven.org/maven2/org/ojalgo/ojalgo/39.0/ojalgo-39.0-sources.jar --slot 0 --keywords "~amd64" --ebuild ojalgo-39.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="oj! Algorithms - ojAlgo - is Open Source Java code that has to do with mathematics, linear algebra and optimisation."
HOMEPAGE="http://ojalgo.org/"
SRC_URI="http://central.maven.org/maven2/org/ojalgo/ojalgo/39.0/ojalgo-39.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.ojalgo:ojalgo:39.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

