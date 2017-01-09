# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/cofoja-1.1-r150.pom --download-uri http://central.maven.org/maven2/org/seqdoop/cofoja/1.1-r150/cofoja-1.1-r150-sources.jar --slot 0 --keywords "~amd64" --ebuild cofoja-1.1_p150.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Contracts for Java enables you to annotate your code with contracts in the form of preconditions, postconditions and invariants."
HOMEPAGE="http://code.google.com/p/cofoja/"
SRC_URI="http://central.maven.org/maven2/org/seqdoop/cofoja/1.1-r150/cofoja-1.1-r150-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seqdoop:cofoja:1.1-r150"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

