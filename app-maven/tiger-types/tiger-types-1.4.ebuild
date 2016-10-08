# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/tiger-types-1.4.pom --download-uri http://central.maven.org/maven2/org/jvnet/tiger-types/1.4/tiger-types-1.4-sources.jar --slot 0 --keywords "~amd64" --ebuild tiger-types-1.4.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java.net - The Source for Java Technology Collaboration"
HOMEPAGE="http://java.net/tiger-types/"
SRC_URI="http://central.maven.org/maven2/org/jvnet/tiger-types/1.4/tiger-types-1.4-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jvnet:tiger-types:1.4"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

