# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jta-1.1.pom --download-uri http://central.maven.org/maven2/javax/transaction/jta/1.1/jta-1.1-sources.jar --slot 0 --keywords "~amd64" --ebuild jta-1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The javax.transaction package. It is appropriate for inclusion in a classpath, and may be added to a Java 2 installation."
HOMEPAGE="http://java.sun.com/products/jta"
SRC_URI="http://central.maven.org/maven2/javax/transaction/jta/1.1/jta-1.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.transaction:jta:1.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

