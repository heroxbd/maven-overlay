# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.transaction-3.1.pom --download-uri http://central.maven.org/maven2/org/glassfish/javax.transaction/3.1/javax.transaction-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-transaction-3.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION=""
HOMEPAGE="http://jcp.org/en/jsr/detail?id=907"
SRC_URI="http://central.maven.org/maven2/org/glassfish/javax.transaction/3.1/javax.transaction-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish:javax.transaction:3.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

