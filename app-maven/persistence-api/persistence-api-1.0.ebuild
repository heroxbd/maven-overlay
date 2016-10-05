# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/persistence-api-1.0.pom --download-uri http://central.maven.org/maven2/javax/persistence/persistence-api/1.0/persistence-api-1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild persistence-api-1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Enterprise JavaBeans architecture is a component architecture for the development and deployment of component-based business applications.
    The purpose of Enterprise JavaBeans (EJB) 3.0 is to improve the EJB architecture by reducing its complexity from the developer's point of view."
HOMEPAGE="http://www.jcp.org/en/jsr/detail?id=220"
SRC_URI="http://central.maven.org/maven2/javax/persistence/persistence-api/1.0/persistence-api-1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.persistence:persistence-api:1.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

