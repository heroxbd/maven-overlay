# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.eclipse.persistence.asm-2.5.2.pom --download-uri http://central.maven.org/maven2/org/eclipse/persistence/org.eclipse.persistence.asm/2.5.2/org.eclipse.persistence.asm-2.5.2-sources.jar --slot 0 --keywords "~amd64" --ebuild org-eclipse-persistence-asm-2.5.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="EclipseLink build based upon Git transaction 9ad6abd"
HOMEPAGE="http://www.eclipse.org/eclipselink"
SRC_URI="http://central.maven.org/maven2/org/eclipse/persistence/org.eclipse.persistence.asm/2.5.2/org.eclipse.persistence.asm-2.5.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.persistence:org.eclipse.persistence.asm:2.5.2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

