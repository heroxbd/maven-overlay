# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jboss-logging-spi-2.1.2.GA.pom --download-uri http://central.maven.org/maven2/org/jboss/logging/jboss-logging-spi/2.1.2.GA/jboss-logging-spi-2.1.2.GA-sources.jar --slot 0 --keywords "~amd64" --ebuild jboss-logging-spi-2.1.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The JBoss Logging Framework Programming Interface"
HOMEPAGE="http://www.jboss.org"
SRC_URI="http://central.maven.org/maven2/org/jboss/logging/jboss-logging-spi/2.1.2.GA/jboss-logging-spi-2.1.2.GA-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.jboss.logging:jboss-logging-spi:2.1.2.GA"

DEPEND="
	>=virtual/jdk-1.5
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.5"

S="${WORKDIR}"

