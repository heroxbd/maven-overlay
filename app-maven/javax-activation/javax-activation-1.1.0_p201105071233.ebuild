# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.activation-1.1.0.v201105071233.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/orbit/javax.activation/1.1.0.v201105071233/javax.activation-1.1.0.v201105071233-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-activation-1.1.0_p201105071233.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="This artifact originates from the Orbit Project at Eclipse, 
    it is an osgi bundle and is signed as well."
HOMEPAGE="http://www.eclipse.org/jetty/jetty-orbit/javax.activation"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/orbit/javax.activation/1.1.0.v201105071233/javax.activation-1.1.0.v201105071233-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty.orbit:javax.activation:1.1.0.v201105071233"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

