# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/lombok-1.12.2.pom --download-uri http://central.maven.org/maven2/org/projectlombok/lombok/1.12.2/lombok-1.12.2-sources.jar --slot 0 --keywords "~amd64" --ebuild lombok-1.12.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Spice up your java: Automatic Resource Management, automatic generation of getters, setters, equals, hashCode and toString, and more!"
HOMEPAGE="http://projectlombok.org"
SRC_URI="http://central.maven.org/maven2/org/projectlombok/lombok/1.12.2/lombok-1.12.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.projectlombok:lombok:1.12.2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

