# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.eclipse.persistence.moxy-2.5.2.pom --download-uri http://central.maven.org/maven2/org/eclipse/persistence/org.eclipse.persistence.moxy/2.5.2/org.eclipse.persistence.moxy-2.5.2-sources.jar --slot 0 --keywords "~amd64" --ebuild org-eclipse-persistence-moxy-2.5.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="EclipseLink build based upon Git transaction 9ad6abd"
HOMEPAGE="http://www.eclipse.org/eclipselink"
SRC_URI="http://central.maven.org/maven2/org/eclipse/persistence/org.eclipse.persistence.moxy/2.5.2/org.eclipse.persistence.moxy-2.5.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.persistence:org.eclipse.persistence.moxy:2.5.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.eclipse.persistence.moxy-2.5.2.pom
# org.eclipse.persistence:org.eclipse.persistence.antlr:2.5.2 -> >=app-maven/org-eclipse-persistence-antlr-2.5.2:0
# org.eclipse.persistence:org.eclipse.persistence.core:2.5.2 -> >=app-maven/org-eclipse-persistence-core-2.5.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.eclipse.persistence.moxy-2.5.2.pom
CDEPEND="
	>=app-maven/org-eclipse-persistence-antlr-2.5.2:0
	>=app-maven/org-eclipse-persistence-core-2.5.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="org-eclipse-persistence-antlr,org-eclipse-persistence-core"
