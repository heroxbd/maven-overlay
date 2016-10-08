# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.servlet-1.0.0.pom --download-uri http://central.maven.org/maven2/org/apache/felix/javax.servlet/1.0.0/javax.servlet-1.0.0.jar --slot 0 --keywords "~amd64" --ebuild javax-servlet-bin-1.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="Servlet 2.1 API"
HOMEPAGE="http://felix.apache.org/javax.servlet/"
SRC_URI="http://central.maven.org/maven2/org/apache/felix/javax.servlet/1.0.0/javax.servlet-1.0.0.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.felix:javax.servlet:1.0.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

