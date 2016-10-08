# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.annotation-3.1.pom --download-uri http://central.maven.org/maven2/org/glassfish/javax.annotation/3.1/javax.annotation-3.1-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-annotation-3.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Common Annotations for the JavaTM Platform API version 1.1 Repackaged as OSGi bundle in GlassFish"
HOMEPAGE="http://glassfish.org/glassfish-parent/javaee-api/javax.annotation/"
SRC_URI="http://central.maven.org/maven2/org/glassfish/javax.annotation/3.1/javax.annotation-3.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish:javax.annotation:3.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

